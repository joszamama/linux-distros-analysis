# Use Debian Stretch as the base image
FROM debian:stretch

# Update the package repository and install the necessary packages
RUN apt-get update && apt-get install -y apt-utils

# Run the command to list all packages
RUN apt-cache dumpavail > /stretch-packages.txt

# Export the generated file outside the container
VOLUME /stretch-packages.txt:/stretch-packages.txt

# Specify the default command to run when the container starts
CMD ["cat", "/stretch-packages.txt"]