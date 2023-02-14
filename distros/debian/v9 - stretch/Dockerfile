# Use Debian Stretch as the base image
FROM debian:stretch

# Update the package repository and install the necessary packages
RUN apt-get update && apt-get install -y apt-utils

# Run the command to list all packages
RUN apt-cache dumpavail > /debian-stretch-packages.txt

# Export the generated file outside the container
VOLUME /debian-stretch-packages.txt:/debian-stretch-packages.txt

# Specify the default command to run when the container starts
CMD ["cat", "/debian-stretch-packages.txt"]