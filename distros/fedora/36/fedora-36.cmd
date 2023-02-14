@echo off

REM Build the Docker image
docker build -t fedora:36 .

REM Run the Docker container
docker run --name fedora.36 -it fedora:36

REM Copy the generated file from the Docker container to the host machine
docker cp fedora.36:/fedora-36-packages.txt .

REM Remove the Docker container
docker rm fedora.36

REM Remove the Docker image
docker rmi fedora:36