def count_packages(file):
    with open(file, "r", encoding="utf-8") as f:
        data = f.read()
        packages = data.count("Package: ")
        essential = data.count("Essential: yes")
        required = data.count("Priority: required")
        important = data.count("Priority: important")
        standard = data.count("Priority: standard")
        optional = data.count("Priority: optional")
        extra = data.count("Priority: extra")
        undefined = packages - (required + important + standard + optional + extra)
        f.close()
        print(f"{file} has {packages} packages, {required} required, where {essential} are essential. {important} important, {standard} standard, {optional} optional, {extra} extra and {undefined} undefined.")


print("\n------------------")
print("Ubuntu Packages")
count_packages("distros/ubuntu/18.04 - bionic/bionic-packages.txt")
count_packages("distros/ubuntu/20.04 - focal/focal-packages.txt")
count_packages("distros/ubuntu/22.04 - jammy/jammy-packages.txt")
count_packages("distros/ubuntu/22.10 - kinetic/kinetic-packages.txt")

print("\n------------------")
print("Debian Packages")
count_packages("distros/debian/v8 - jessie/jessie-packages.txt")
count_packages("distros/debian/v9 - stretch/stretch-packages.txt")
count_packages("distros/debian/v10 - buster/buster-packages.txt")
count_packages("distros/debian/v11 - bullseye/bullseye-packages.txt")
print("\n------------------")