# Use Arch Linux as the base image
FROM archlinux:base-devel-20230212.0.126025

# Update the package repository and install the necessary packages
RUN pacman -Syu --noconfirm

# Run the command to list all packages and their details
RUN pacman -Qi | grep -E 'Name|Version|Description' > /arch-20230212-packages.txt

# Export the generated file outside the container
VOLUME /arch-20230212-packages.txt:/arch-20230212-packages.txt

# Specify the default command to run when the container starts
CMD ["cat", "/arch-20230212-packages.txt"]