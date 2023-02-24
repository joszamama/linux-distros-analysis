#!/bin/bash

# Build the Docker image
docker build -t neurodebian:bionic .

# Run the Docker container
docker run --name neurodebian.bionic -it neurodebian:bionic

# Copy the generated file from the Docker container to the host machine
docker cp neurodebian.bionic:/neurodebian-bionic-packages.txt .

# Remove the Docker container
docker rm neurodebian.bionic

# Remove the Docker image
docker rmi neurodebian:bionic