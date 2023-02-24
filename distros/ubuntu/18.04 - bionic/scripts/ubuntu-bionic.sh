#!/bin/bash

# Build the Docker image
docker build -t ubuntu:bionic ../

# Run the Docker container
docker run --name ubuntu.bionic -it ubuntu:bionic

# Copy the generated file from the Docker container to the host machine
docker cp ubuntu.bionic:/output/ubuntu-bionic-packages.txt ../output

# Remove the Docker container
docker rm ubuntu.bionic

# Remove the Docker image
docker rmi ubuntu:bionic