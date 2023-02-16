@echo off

REM Build the Docker image
docker build -t websphere:23.0.0.1-java8 .

REM Run the Docker container
docker run --name liberty.23.0.0.1 -it websphere:23.0.0.1-java8

REM Copy the generated file from the Docker container to the host machine
docker cp liberty.23.0.0.1:/websphere-23.0.0.1-java8-packages.txt .

REM Remove the Docker container
docker rm liberty.23.0.0.1

REM Remove the Docker image
docker rmi websphere:23.0.0.1-java8