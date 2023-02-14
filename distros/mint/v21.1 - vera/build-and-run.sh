#!/bin/bash

# Build the Docker image
docker build -t myveraimage .

# Run the container and execute the default command
docker run --name myveracontainer myveraimage

# Copy the generated file from the container to the host machine
docker cp myveracontainer:/vera-packages.txt ./vera-packages.txt

# Remove the Docker container
docker rm myveracontainer

# Remove the Docker image
docker rmi myveraimage