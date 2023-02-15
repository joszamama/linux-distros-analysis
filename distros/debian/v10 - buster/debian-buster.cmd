@echo off

REM Build the Docker image
docker build -t debian:buster .

REM Run the Docker container
docker run --name debian.buster -it debian:buster

REM Copy the generated file from the Docker container to the host machine
docker cp debian.buster:/debian-buster-packages.txt .

REM Remove the Docker container
docker rm debian.buster

REM Remove the Docker image
docker rmi debian:buster