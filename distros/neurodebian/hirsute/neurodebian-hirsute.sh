#!/bin/bash

# Build the Docker image
docker build -t neurodebian:hirsute .

# Run the Docker container
docker run --name neurodebian.hirsute -it neurodebian:hirsute

# Copy the generated file from the Docker container to the host machine
docker cp neurodebian.hirsute:/neurodebian-hirsute-packages.txt .

# Remove the Docker container
docker rm neurodebian.hirsute

# Remove the Docker image
docker rmi neurodebian:hirsute