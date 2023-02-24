@echo off

REM Build the Docker image
docker build -t websphere:21.0.0.12-java8 .

REM Run the Docker container
docker run --name liberty.21.0.0.12 -it websphere:21.0.0.12-java8

REM Copy the generated file from the Docker container to the host machine
docker cp liberty.21.0.0.12:/websphere-21.0.0.12-java8-packages.txt .

REM Remove the Docker container
docker rm liberty.21.0.0.12

REM Remove the Docker image
docker rmi websphere:21.0.0.12-java8