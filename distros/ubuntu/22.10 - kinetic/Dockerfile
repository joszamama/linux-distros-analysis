# Use Ubuntu Kinetic as the base image
FROM ubuntu:22.10

# Update the package repository and install the necessary packages
RUN apt-get update && apt-get install -y apt-utils

# Run the command to list all packages
RUN apt-cache dumpavail > /kinetic-packages.txt

# Export the generated file outside the container
VOLUME /kinetic-packages.txt:/kinetic-packages.txt

# Specify the default command to run when the container starts
CMD ["cat", "/kinetic-packages.txt"]