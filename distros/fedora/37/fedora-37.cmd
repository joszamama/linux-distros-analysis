@echo off

REM Build the Docker image
docker build -t fedora:37 .

REM Run the Docker container
docker run --name fedora.37 -it fedora:37

REM Copy the generated file from the Docker container to the host machine
docker cp fedora.37:/fedora-37-packages.txt .

REM Remove the Docker container
docker rm fedora.37

REM Remove the Docker image
docker rmi fedora:37