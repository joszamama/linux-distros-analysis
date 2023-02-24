def count_packages_apt(file):
    with open(file, "r", encoding="utf-8") as f:
        data = f.read()
        packages = data.count("Package: ")
        essential = data.count("Essential: yes")
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
count_packages_apt("distros/ubuntu/18.04 - bionic/ubuntu-bionic-packages.txt")
count_packages_apt("distros/ubuntu/20.04 - focal/ubuntu-focal-packages.txt")
count_packages_apt("distros/ubuntu/22.04 - jammy/ubuntu-jammy-packages.txt")
count_packages_apt(
    "distros/ubuntu/22.10 - kinetic/ubuntu-kinetic-packages.txt")

print("\n------------------")
print("Fedora Packages")
count_packages_dnf("distros/fedora/36/fedora-36-packages.txt")
count_packages_dnf("distros/fedora/37/fedora-37-packages.txt")
count_packages_dnf("distros/fedora/38/fedora-38-packages.txt")

print("\n------------------")
print("Debian Packages")
count_packages_apt("distros/debian/v8 - jessie/debian-jessie-packages.txt")
count_packages_apt("distros/debian/v9 - stretch/debian-stretch-packages.txt")
count_packages_apt("distros/debian/v10 - buster/debian-buster-packages.txt")
count_packages_apt(
    "distros/debian/v11 - bullseye/debian-bullseye-packages.txt")

print("\n------------------")
