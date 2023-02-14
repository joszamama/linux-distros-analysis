@echo off

REM Build the Docker image
docker build -t debian:stretch .

REM Run the Docker container
docker run --name debian.stretch -it debian:stretch

REM Copy the generated file from the Docker container to the host machine
docker cp debian.stretch:/debian-stretch-packages.txt .

REM Remove the Docker container
docker rm debian.stretch

REM Remove the Docker image
docker rmi debian:stretch