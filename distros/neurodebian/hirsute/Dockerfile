# Use neurodebian hirsute as the base image
FROM neurodebian:hirsute

# Update the package repository and install the necessary packages
RUN apt-get update && apt-get install -y apt-utils || true

# Run the command to list all packages
RUN apt-cache dumpavail > /neurodebian-hirsute-packages.txt || true

# Export the generated file outside the container
VOLUME /neurodebian-hirsute-packages.txt:/neurodebian-hirsute-packages.txt

# Specify the default command to run when the container starts
CMD ["cat", "/neurodebian-hirsute-packages.txt"]