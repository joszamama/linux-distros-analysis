#!/bin/bash

# Build the Docker image
docker build -t debian:bullseye .

# Run the Docker container
docker run --name debian.bullseye -it debian:bullseye

# Copy the generated file from the Docker container to the host machine
docker cp debian.bullseye:/debian-bullseye-packages.txt .

# Remove the Docker container
docker rm debian.bullseye

# Remove the Docker image
docker rmi debian:bullseye