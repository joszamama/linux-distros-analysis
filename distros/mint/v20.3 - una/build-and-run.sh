#!/bin/bash

# Build the Docker image
sudo docker build -t myunaimage .

# Run the container and execute the default command
sudo docker run --name myunacontainer myunaimage

# Copy the generated file from the container to the host machine
sudo docker cp myunacontainer:/una-packages.txt ./una-packages.txt

# Remove the Docker container
sudo docker rm myunacontainer

# Remove the Docker image
sudo docker rmi myunaimage