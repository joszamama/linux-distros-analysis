#!/bin/bash

# Build the Docker image
docker build -t debian:jessie .

# Run the Docker container
docker run --name debian.jessie -it debian:jessie

# Copy the generated file from the Docker container to the host machine
docker cp debian.jessie:/debian-jessie-packages.txt .

# Remove the Docker container
docker rm debian.jessie

# Remove the Docker image
docker rmi debian:jessie