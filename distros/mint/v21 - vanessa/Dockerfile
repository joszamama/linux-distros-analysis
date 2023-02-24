# Use Linux Mint vanessa as the base image
FROM linuxmintd/mint21-amd64

# Update the package repository and install the necessary packages
RUN apt-get update && apt-get install -y apt-utils

# Run the command to list all packages
RUN apt-cache dumpavail > /vanessa-packages.txt

# Export the generated file outside the container
VOLUME /vanessa-packages.txt:/vanessa-packages.txt

# Specify the default command to run when the container starts
CMD ["cat", "/vanessa-packages.txt"]