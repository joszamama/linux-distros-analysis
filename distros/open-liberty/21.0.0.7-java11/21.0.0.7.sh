#!/bin/bash

# Build the Docker image
docker build -t open:21.0.0.7-java11 .

# Run the Docker container
docker run --name liberty.21.0.0.7 -it open:21.0.0.7-java11

# Copy the generated file from the Docker container to the host machine
docker cp liberty.21.0.0.7:/open-21.0.0.7-java11-packages.txt .

# Remove the Docker container
docker rm liberty.21.0.0.7

# Remove the Docker image
docker rmi open:21.0.0.7-java11