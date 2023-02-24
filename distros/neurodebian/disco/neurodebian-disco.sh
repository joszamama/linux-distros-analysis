#!/bin/bash

# Build the Docker image
docker build -t neurodebian:disco .

# Run the Docker container
docker run --name neurodebian.disco -it neurodebian:disco

# Copy the generated file from the Docker container to the host machine
docker cp neurodebian.disco:/neurodebian-disco-packages.txt .

# Remove the Docker container
docker rm neurodebian.disco

# Remove the Docker image
docker rmi neurodebian:disco