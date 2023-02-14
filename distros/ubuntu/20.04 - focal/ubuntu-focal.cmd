@echo off

REM Build the Docker image
docker build -t ubuntu:focal .

REM Run the Docker container
docker run --name ubuntu.focal -it ubuntu:focal

REM Copy the generated file from the Docker container to the host machine
docker cp ubuntu.focal:/ubuntu-focal-packages.txt .

REM Remove the Docker container
docker rm ubuntu.focal

REM Remove the Docker image
docker rmi ubuntu:focal