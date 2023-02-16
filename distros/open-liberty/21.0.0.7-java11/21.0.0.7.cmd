@echo off

REM Build the Docker image
docker build -t open:21.0.0.7-java11 .

REM Run the Docker container
docker run --name liberty.21.0.0.7 -it open:21.0.0.7-java11

REM Copy the generated file from the Docker container to the host machine
docker cp liberty.21.0.0.7:/open-21.0.0.7-java11-packages.txt .

REM Remove the Docker container
docker rm liberty.21.0.0.7

REM Remove the Docker image
docker rmi open:21.0.0.7-java11