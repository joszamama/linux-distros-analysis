#!/bin/bash

# Build the Docker image
docker build -t open:23.0.0.1-java11 .

# Run the Docker container
docker run --name liberty.23.0.0.1 -it open:23.0.0.1-java11

# Copy the generated file from the Docker container to the host machine
docker cp liberty.23.0.0.1:/open-23.0.0.1-java11-packages.txt .

# Remove the Docker container
docker rm liberty.23.0.0.1

# Remove the Docker image
docker rmi open:23.0.0.1-java11