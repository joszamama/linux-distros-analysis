# Use Pop!_OS 21.10 as the base image
FROM system76/pop:21.10

# Update the package repository and install the necessary packages
RUN apt-get update && apt-get install -y apt-utils

# Run the command to list all packages
RUN apt-cache dumpavail > /pop-os-21.10-packages.txt

# Export the generated file outside the container
VOLUME /pop-os-21.10-packages.txt:/pop-os-21.10-packages.txt

# Specify the default command to run when the container starts
CMD ["cat", "/pop-os-21.10-packages.txt"]
