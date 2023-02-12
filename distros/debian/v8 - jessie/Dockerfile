# Use Debian Jessie as the base image
FROM debian:jessie

# Update the package repository and install the necessary packages
RUN apt-get update && apt-get install -y apt-utils

# Run the command to list all packages
RUN apt-cache dumpavail > /jessie-packages.txt

# Export the generated file outside the container
VOLUME /jessie-packages.txt:/jessie-packages.txt

# Specify the default command to run when the container starts
CMD ["cat", "/jessie-packages.txt"]