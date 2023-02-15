@echo off

REM Build the Docker image
docker build -t popOs:21.10 .

REM Run the Docker container
docker run --name popOs.21.10 -it popOs:21.10

REM Copy the generated file from the Docker container to the host machine
docker cp popOs.21.10:/popOs-21.10-packages.txt .

REM Remove the Docker container
docker rm popOs.21.10

REM Remove the Docker image
docker rmi popOs:21.10