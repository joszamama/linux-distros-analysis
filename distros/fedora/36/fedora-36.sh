#!/bin/bash

# Build the Docker image
docker build -t fedora:36 .

# Run the Docker container
docker run --name fedora.36 -it fedora:36

# Copy the generated file from the Docker container to the host machine
docker cp fedora.36:/fedora-36-packages.txt .

# Remove the Docker container
docker rm fedora.36

# Remove the Docker image
docker rmi fedora:36