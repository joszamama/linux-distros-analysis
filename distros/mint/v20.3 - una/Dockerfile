# Use Linux Mint Una as the base image
FROM linuxmintd/mint20.3-amd64

# Update the package repository and install the necessary packages
RUN apt-get update && apt-get install -y apt-utils

# Run the command to list all packages
RUN apt-cache dumpavail > /una-packages.txt

# Export the generated file outside the container
VOLUME /una-packages.txt:/una-packages.txt

# Specify the default command to run when the container starts
CMD ["cat", "/una-packages.txt"]