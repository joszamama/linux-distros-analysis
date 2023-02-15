#!/bin/bash

# Build the Docker image
docker build -t debian:stretch .

# Run the Docker container
docker run --name debian.stretch -it debian:stretch

# Copy the generated file from the Docker container to the host machine
docker cp debian.stretch:/debian-stretch-packages.txt .

# Remove the Docker container
docker rm debian.stretch

# Remove the Docker image
docker rmi debian:stretch