#!/bin/bash

# Build the Docker image
docker build -t debian:buster .

# Run the Docker container
docker run --name debian.buster -it debian:buster

# Copy the generated file from the Docker container to the host machine
docker cp debian.buster:/debian-buster-packages.txt .

# Remove the Docker container
docker rm debian.buster

# Remove the Docker image
docker rmi debian:buster