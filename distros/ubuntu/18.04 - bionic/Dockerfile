# Use Ubuntu Bionic as the base image
FROM ubuntu:18.04

# Update the package repository and install the necessary packages
RUN apt-get update && apt-get install -y apt-utils

# Run the command to list all packages
RUN apt-cache dumpavail > /bionic-packages.txt

# Export the generated file outside the container
VOLUME /bionic-packages.txt:/bionic-packages.txt

# Specify the default command to run when the container starts
CMD ["cat", "/bionic-packages.txt"]