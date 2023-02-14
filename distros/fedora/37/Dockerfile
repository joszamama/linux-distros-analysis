# Use Fedora 37 as the base image
FROM fedora:37

# Update the package repository and install the necessary packages
RUN dnf -y update && dnf -y install dnf-plugins-core

# Run the command to list all packages
RUN dnf repoquery --all --info > /fedora-37-packages.txt

# Export the generated file outside the container
VOLUME /fedora-37-packages.txt:/fedora-37-packages.txt

# Specify the default command to run when the container starts
CMD ["cat", "/fedora-37-packages.txt"]