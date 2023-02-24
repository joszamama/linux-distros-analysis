@echo off

REM Build the Docker image
docker build -t ubuntu:jammy ../

REM Run the Docker container
docker run --name ubuntu.jammy -it ubuntu:jammy

REM Copy the generated file from the Docker container to the host machine
docker cp ubuntu.jammy:/ubuntu-jammy-packages.txt ../output

REM Remove the Docker container
docker rm ubuntu.jammy

REM Remove the Docker image
docker rmi ubuntu:jammy