# Use Ubuntu Focal as the base image
FROM ubuntu:20.04

# Update the package repository and install the necessary packages
RUN apt-get update && apt-get install -y apt-utils

# Run the command to list all packages
RUN apt-cache dumpavail > /focal-packages.txt

# Export the generated file outside the container
VOLUME /focal-packages.txt:/focal-packages.txt

# Specify the default command to run when the container starts
CMD ["cat", "/focal-packages.txt"]