#!/bin/bash

# Build the Docker image
docker build -t arch:20220227 .

# Run the Docker container
docker run --name arch.20220227 -it arch:20220227

# Copy the generated file from the Docker container to the host machine
docker cp arch.20220227:/arch-20220227-packages.txt .

# Remove the Docker container
docker rm arch.20220227

# Remove the Docker image
docker rmi arch:20220227