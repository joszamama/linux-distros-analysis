import pandas as pd
import numpy as np
import datetime
from concurrent.futures import ThreadPoolExecutor


def read_packages(version, year, file):
    print("--------- " + datetime.datetime.now().strftime("%H:%M:%S") +
          f" || Reading {version}... ---------")
    names = ["Distro-Version", "Distro-Year", "Package", "Description", "Section", "Version", "Architecture", "Priority", "Essential", "Build-Essential", "Important",
             "Maintainer", "Original-Maintainer", "Size", "Installed-Size", "Depends", "Pre-Depends", "Recommends", "Conflicts", "Suggests", "Breaks", "Replaces", "Provides", "Enhances"]
    with open(file, "r", encoding="utf-8") as f:
        df = pd.DataFrame()
        data = f.read()
        packages = data.split("\n\n")
        row_count = 0
        for package in packages:
            columns = package.split("\n")
            entry = {"Distro-Version": version, "Distro-Year": year}
            for column in columns:
                column = column.split(": ")
                header = column[0] if len(column) > 1 else None
                value = column[1] if len(column) > 1 else None
                if header in names:
                    entry[header] = value
            df = pd.concat([df, pd.DataFrame([entry])], ignore_index=True)
            row_count += 1
            if row_count % 1000 == 0:
                if row_count == 1000:
                    df.to_csv(f"./distros/ubuntu/{version}/output/{version}.csv",
                              mode='w', index=False, header=True, chunksize=1000)
                else:
                    df.to_csv(f"./distros/ubuntu/{version}/output/{version}.csv",
                              mode='a', index=False, header=False, chunksize=1000)
                df = pd.DataFrame()
                print(
                    f"--------- {datetime.datetime.now().strftime('%H:%M:%S')} || {row_count} rows written to {version}.csv ---------")
        if not df.empty:
            df.to_csv(f"./distros/ubuntu/{version}/output/{version}.csv",
                      mode='a', index=False, header=False, chunksize=1000)
            print(
                f"--------- {datetime.datetime.now().strftime('%H:%M:%S')} || {row_count} rows written to {version}.csv ---------")
        f.close()
    print("--------- " + datetime.datetime.now().strftime("%H:%M:%S") +
          f" || Finished {version}! ---------")


def construct_ubuntu(distros):
    print("--------- " + datetime.datetime.now().strftime("%H:%M:%S") +
          " || Starting Constructor ---------")
    with ThreadPoolExecutor(max_workers=4) as executor:
        for version, year, file in distros:
            executor.submit(read_packages, version, year, file)
        executor.shutdown(wait=True)
    print("--------- " + datetime.datetime.now().strftime("%H:%M:%S") +
          " || Finished Constructor! ---------")
    print("--------- " + datetime.datetime.now().strftime("%H:%M:%S") +
          " || Starting Concatenator ---------")
    df = pd.DataFrame()
    for version, year, file in distros:
        if df.empty:
            df = pd.read_csv(
                f'./distros/ubuntu/{version}/output/{version}.csv')
        else:
            df = pd.concat([df, pd.read_csv(
                f'./distros/ubuntu/{version}/output/{version}.csv')], ignore_index=True)
    df.to_csv(f"./distros/ubuntu/ubuntu-packages.csv", mode='w',
              index=False, header=True, chunksize=1000)
    print("--------- " + datetime.datetime.now().strftime("%H:%M:%S") +
          " || Concatenator finished! ---------")


distros = [("18.04 - bionic", "2018", "./distros/ubuntu/18.04 - bionic/output/ubuntu-bionic-packages.txt"),
           ("20.04 - focal", "2020",
            "./distros/ubuntu/20.04 - focal/output/ubuntu-focal-packages.txt"),
           ("22.04 - jammy", "2022",
            "./distros/ubuntu/22.04 - jammy/output/ubuntu-jammy-packages.txt"),
           ("22.10 - kinetic", "2022", "./distros/ubuntu/22.10 - kinetic/output/ubuntu-kinetic-packages.txt")]

construct_ubuntu(distros)
