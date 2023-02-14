# Use Ubuntu Jammy as the base image
FROM ubuntu:22.04

# Update the package repository and install the necessary packages
RUN apt-get update && apt-get install -y apt-utils

# Run the command to list all packages
RUN apt-cache dumpavail > /ubuntu-jammy-packages.txt

# Export the generated file outside the container
VOLUME /ubuntu-jammy-packages.txt:/ubuntu-jammy-packages.txt

# Specify the default command to run when the container starts
CMD ["cat", "/ubuntu-jammy-packages.txt"]