#!/bin/bash

# Build the Docker image
docker build -t fedora:38 .

# Run the Docker container
docker run --name fedora.38 -it fedora:38

# Copy the generated file from the Docker container to the host machine
docker cp fedora.38:/fedora-38-packages.txt .

# Remove the Docker container
docker rm fedora.38

# Remove the Docker image
docker rmi fedora:38