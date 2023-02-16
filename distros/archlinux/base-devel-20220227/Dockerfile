# Use Arch Linux as the base image
FROM archlinux:base-20220925.0.89186

# Update the package repository and install the necessary packages
RUN pacman -Syu --noconfirm

# Run the command to list all packages and their details
RUN pacman -Qi | grep -E 'Name|Version|Description' > /arch-20220227-packages.txt

# Export the generated file outside the container
VOLUME /arch-20220227-packages.txt:/arch-20220227-packages.txt

# Specify the default command to run when the container starts
CMD ["cat", "/arch-20220227-packages.txt"]