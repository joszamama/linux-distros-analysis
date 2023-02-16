#!/bin/bash

# Build the Docker image
docker build -t arch:20230212 .

# Run the Docker container
docker run --name arch.20230212 -it arch:20230212

# Copy the generated file from the Docker container to the host machine
docker cp arch.20230212:/arch-20230212-packages.txt .

# Remove the Docker container
docker rm arch.20230212

# Remove the Docker image
docker rmi arch:20230212