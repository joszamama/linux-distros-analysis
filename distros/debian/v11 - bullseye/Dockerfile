# Use Debian Bullseye as the base image
FROM debian:bullseye

# Update the package repository and install the necessary packages
RUN apt-get update && apt-get install -y apt-utils

# Run the command to list all packages
RUN apt-cache dumpavail > /bullseye-packages.txt

# Export the generated file outside the container
VOLUME /bullseye-packages.txt:/bullseye-packages.txt

# Specify the default command to run when the container starts
CMD ["cat", "/bullseye-packages.txt"]