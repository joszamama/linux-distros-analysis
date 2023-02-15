#!/bin/bash

# Build the Docker image
docker build -t ubuntu:focal .

# Run the Docker container
docker run --name ubuntu.focal -it ubuntu:focal

# Copy the generated file from the Docker container to the host machine
docker cp ubuntu.focal:/ubuntu-focal-packages.txt .

# Remove the Docker container
docker rm ubuntu.focal

# Remove the Docker image
docker rmi ubuntu:focal