#!/bin/bash

# Build the Docker image
docker build -t websphere:20.0.0.12-java8 .

# Run the Docker container
docker run --name liberty.20.0.0.12 -it websphere:20.0.0.12-java8

# Copy the generated file from the Docker container to the host machine
docker cp liberty.20.0.0.12:/websphere-20.0.0.12-java8-packages.txt .

# Remove the Docker container
docker rm liberty.20.0.0.12

# Remove the Docker image
docker rmi websphere:20.0.0.12-java8