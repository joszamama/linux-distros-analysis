# Use Debian Buster as the base image
FROM debian:buster

# Update the package repository and install the necessary packages
RUN apt-get update && apt-get install -y apt-utils

# Run the command to list all packages
RUN apt-cache dumpavail > /debian-buster-packages.txt

# Export the generated file outside the container
VOLUME /debian-buster-packages.txt:/debian-buster-packages.txt

# Specify the default command to run when the container starts
CMD ["cat", "/debian-buster-packages.txt"]