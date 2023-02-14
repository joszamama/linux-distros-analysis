#!/bin/bash

# Build the Docker image
docker build -t ubuntu:kinetic .

# Run the Docker container
docker run --name ubuntu.kinetic -it ubuntu:kinetic

# Copy the generated file from the Docker container to the host machine
docker cp ubuntu.kinetic:/ubuntu-kinetic-packages.txt .

# Remove the Docker container
docker rm ubuntu.kinetic

# Remove the Docker image
docker rmi ubuntu:kinetic