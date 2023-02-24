# Use neurodebian disco as the base image
FROM neurodebian:disco

# Update the package repository and install the necessary packages
RUN apt-get update && apt-get install -y apt-utils || true

# Run the command to list all packages
RUN apt-cache dumpavail > /neurodebian-disco-packages.txt || true

# Export the generated file outside the container
VOLUME /neurodebian-disco-packages.txt:/neurodebian-disco-packages.txt

# Specify the default command to run when the container starts
CMD ["cat", "/neurodebian-disco-packages.txt"]