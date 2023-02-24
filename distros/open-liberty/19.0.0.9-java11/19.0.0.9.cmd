@echo off

REM Build the Docker image
docker build -t open:19.0.0.9-java11 .

REM Run the Docker container
docker run --name liberty.19.0.0.9 -it open:19.0.0.9-java11

REM Copy the generated file from the Docker container to the host machine
docker cp liberty.19.0.0.9:/open-19.0.0.9-java11-packages.txt .

REM Remove the Docker container
docker rm liberty.19.0.0.9

REM Remove the Docker image
docker rmi open:19.0.0.9-java11