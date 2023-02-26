def count_packages_apt(file):
    with open(file, "r", encoding="utf-8") as f:
        data = f.read()
        packages = data.count("Package: ")
        essential = data.count("Build-Essential: yes")
        required = data.count("Priority: required")
        important = data.count("Priority: important")
        standard = data.count("Priority: standard")
        optional = data.count("Priority: optional")
        extra = data.count("Priority: extra")
        undefined = packages - (required + important +
                                standard + optional + extra)
        f.close()
        print(f"{file} has {packages} packages, {required} required, where {essential} are essential. {important} important, {standard} standard, {optional} optional, {extra} extra and {undefined} undefined.")


def count_packages_dnf(file):
    with open(file, "r", encoding="utf-8") as f:
        data = f.read()
        packages = data.count("Name         :")
        f.close()
        print(f"{file} has {packages} packages.")


print("\n------------------")
print("Ubuntu Packages")
count_packages_apt(
    "distros/ubuntu/18.04 - bionic/output/ubuntu-bionic-packages.txt")
count_packages_apt(
    "distros/ubuntu/20.04 - focal/output/ubuntu-focal-packages.txt")
count_packages_apt(
    "distros/ubuntu/22.04 - jammy/output/ubuntu-jammy-packages.txt")
count_packages_apt(
    "distros/ubuntu/22.10 - kinetic/output/ubuntu-kinetic-packages.txt")

print("\n------------------")
