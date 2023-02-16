# Use neurodebian bionic as the base image
FROM neurodebian:bionic

# Update the package repository and install the necessary packages
RUN apt-get update && apt-get install -y apt-utils

# Run the command to list all packages
RUN apt-cache dumpavail > /neurodebian-bionic-packages.txt

# Export the generated file outside the container
VOLUME /neurodebian-bionic-packages.txt:/neurodebian-bionic-packages.txt

# Specify the default command to run when the container starts
CMD ["cat", "/neurodebian-bionic-packages.txt"]