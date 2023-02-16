#!/bin/bash

# Build the Docker image
docker build -t popos:21.10 .

# Run the Docker container
docker run --name popos.21.10 -it popos:21.10

# Copy the generated file from the Docker container to the host machine
docker cp popos.21.10:/popos-21.10-packages.txt .

# Remove the Docker container
docker rm popos.21.10

# Remove the Docker image
docker rmi popos:21.10