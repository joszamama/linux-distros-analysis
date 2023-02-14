# Use Linux Mint Vera as the base image
FROM linuxmintd/mint21.1-amd64

# Update the package repository and install the necessary packages
RUN apt-get update && apt-get install -y apt-utils

# Run the command to list all packages
RUN apt-cache dumpavail > /vera-packages.txt

# Export the generated file outside the container
VOLUME /vera-packages.txt:/vera-packages.txt

# Specify the default command to run when the container starts
CMD ["cat", "/vera-packages.txt"]