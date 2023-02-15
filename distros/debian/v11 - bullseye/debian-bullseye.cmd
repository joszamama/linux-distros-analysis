@echo off

REM Build the Docker image
docker build -t debian:bullseye .

REM Run the Docker container
docker run --name debian.bullseye -it debian:bullseye

REM Copy the generated file from the Docker container to the host machine
docker cp debian.bullseye:/debian-bullseye-packages.txt .

REM Remove the Docker container
docker rm debian.bullseye

REM Remove the Docker image
docker rmi debian:bullseye