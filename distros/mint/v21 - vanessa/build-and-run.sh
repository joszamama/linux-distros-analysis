#!/bin/bash

# Build the Docker image
sudo docker build -t myvanessaimage .

# Run the container and execute the default command
sudo docker run --name myvanessacontainer myvanessaimage

# Copy the generated file from the container to the host machine
sudo docker cp myvanessacontainer:/vanessa-packages.txt ./vanessa-packages.txt

# Remove the Docker container
sudo docker rm myvanessacontainer

# Remove the Docker image
sudo docker rmi myvanessaimage