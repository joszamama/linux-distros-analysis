#!/bin/bash

# Build the Docker image
docker build -t datawarehouse ../

# Run the Docker image
docker run --name data.warehouse -it -p 5432:5432 -d datawarehouse

# Connect to the Docker container, open a bash shell and run the psql command
docker exec -it data.warehouse bash

# Stop the Docker container
docker stop data.warehouse

# Remove the Docker container
docker rm data.warehouse

# Remove the Docker image
docker rmi datawarehouse