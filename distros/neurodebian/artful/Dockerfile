# Use neurodebian artful as the base image
FROM neurodebian:artful

# Update the package repository and install the necessary packages
RUN apt-get update && apt-get install -y apt-utils || true

# Run the command to list all packages
RUN apt-cache dumpavail > /neurodebian-artful-packages.txt || true

# Export the generated file outside the container
VOLUME /neurodebian-artful-packages.txt:/neurodebian-artful-packages.txt

# Specify the default command to run when the container starts
CMD ["cat", "/neurodebian-artful-packages.txt"]