# Use Debian Wheezy as the base image
FROM debian:wheezy

# Update the package repository and install the necessary packages
RUN apt-get update && apt-get install -y apt-utils

# Run the command to list all packages
RUN apt-cache dumpavail > /wheezy-packages.txt

# Export the generated file outside the container
VOLUME /wheezy-packages.txt:/wheezy-packages.txt

# Specify the default command to run when the container starts
CMD ["cat", "/wheezy-packages.txt"]