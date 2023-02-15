#!/bin/bash

# Build the Docker image
docker build -t popOs:21.10 .

# Run the Docker container
docker run --name popOs.21.10 -it popOs:21.10

# Copy the generated file from the Docker container to the host machine
docker cp popOs.21.10:/popOs-21.10-packages.txt .

# Remove the Docker container
docker rm popOs.21.10

# Remove the Docker image
docker rmi popOs:21.10