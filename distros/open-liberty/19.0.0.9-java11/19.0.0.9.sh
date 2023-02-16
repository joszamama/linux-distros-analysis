#!/bin/bash

# Build the Docker image
docker build -t open:19.0.0.9-java11 .

# Run the Docker container
docker run --name liberty.19.0.0.9 -it open:19.0.0.9-java11

# Copy the generated file from the Docker container to the host machine
docker cp liberty.19.0.0.9:/open-19.0.0.9-java11-packages.txt .

# Remove the Docker container
docker rm liberty.19.0.0.9

# Remove the Docker image
docker rmi open:19.0.0.9-java11