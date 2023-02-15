@echo off

REM Build the Docker image
docker build -t debian:jessie .

REM Run the Docker container
docker run --name debian.jessie -it debian:jessie

REM Copy the generated file from the Docker container to the host machine
docker cp debian.jessie:/debian-jessie-packages.txt .

REM Remove the Docker container
docker rm debian.jessie

REM Remove the Docker image
docker rmi debian:jessie