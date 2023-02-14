# Use Debian Jessie as the base image
FROM debian:jessie

# Update the package repository and install the necessary packages
RUN apt-get update && apt-get install -y apt-utils

# Run the command to list all packages
RUN apt-cache dumpavail > /debian-jessie-packages.txt

# Export the generated file outside the container
VOLUME /debian-jessie-packages.txt:/debian-jessie-packages.txt

# Specify the default command to run when the container starts
CMD ["cat", "/debian-jessie-packages.txt"]