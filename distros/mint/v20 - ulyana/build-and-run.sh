#!/bin/bash

# Build the Docker image
sudo docker build -t myulyanaimage .

# Run the container and execute the default command
sudo docker run --name myulyanacontainer myulyanaimage

# Copy the generated file from the container to the host machine
sudo docker cp myulyanacontainer:/ulyana-packages.txt ./ulyana-packages.txt

# Remove the Docker container
sudo docker rm myulyanacontainer

# Remove the Docker image
sudo docker rmi myulyanaimage