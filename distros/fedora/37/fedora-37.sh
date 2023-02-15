#!/bin/bash

# Build the Docker image
docker build -t fedora:37 .

# Run the Docker container
docker run --name fedora.37 -it fedora:37

# Copy the generated file from the Docker container to the host machine
docker cp fedora.37:/fedora-37-packages.txt .

# Remove the Docker container
docker rm fedora.37

# Remove the Docker image
docker rmi fedora:37