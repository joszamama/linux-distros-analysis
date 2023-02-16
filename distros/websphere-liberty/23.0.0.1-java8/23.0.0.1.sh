#!/bin/bash

# Build the Docker image
docker build -t websphere:23.0.0.1-java8 .

# Run the Docker container
docker run --name liberty.23.0.0.1 -it websphere:23.0.0.1-java8

# Copy the generated file from the Docker container to the host machine
docker cp liberty.23.0.0.1:/websphere-23.0.0.1-java8-packages.txt .

# Remove the Docker container
docker rm liberty.23.0.0.1

# Remove the Docker image
docker rmi websphere:23.0.0.1-java8