#!/bin/bash

# Build the Docker image
docker build -t ubuntu:jammy ../

# Run the Docker container
docker run --name ubuntu.jammy -it ubuntu:jammy

# Copy the generated file from the Docker container to the host machine
docker cp ubuntu.jammy:/ubuntu-jammy-packages.txt ../output

# Remove the Docker container
docker rm ubuntu.jammy

# Remove the Docker image
docker rmi ubuntu:jammy