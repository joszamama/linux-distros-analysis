@echo off

REM Build the Docker image
docker build -t alpine:3.14 .

REM Run the Docker container
docker run --name alpine.3.14 -it alpine:3.14

REM Copy the generated file from the Docker container to the host machine
docker cp alpine.3.14:/alpine-3.14-packages.txt .

REM Remove the Docker container
docker rm alpine.3.14

REM Remove the Docker image
docker rmi alpine:3.14