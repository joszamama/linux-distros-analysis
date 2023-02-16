#!/bin/bash

# Build the Docker image
docker build -t neurodebian:artful .

# Run the Docker container
docker run --name neurodebian.artful -it neurodebian:artful

# Copy the generated file from the Docker container to the host machine
docker cp neurodebian.artful:/neurodebian-artful-packages.txt .

# Remove the Docker container
docker rm neurodebian.artful

# Remove the Docker image
docker rmi neurodebian:artful