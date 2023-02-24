#!/bin/bash

# Build the Docker image
docker build -t open:22.0.0.2-java11 .

# Run the Docker container
docker run --name liberty.22.0.0.2 -it open:22.0.0.2-java11

# Copy the generated file from the Docker container to the host machine
docker cp liberty.22.0.0.2:/open-22.0.0.2-java11-packages.txt .

# Remove the Docker container
docker rm liberty.22.0.0.2

# Remove the Docker image
docker rmi open:22.0.0.2-java11