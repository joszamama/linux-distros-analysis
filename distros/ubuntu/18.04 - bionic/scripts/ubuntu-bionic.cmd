@echo off

REM Build the Docker image
docker build -t ubuntu:bionic ../

REM Run the Docker container
docker run --name ubuntu.bionic -it ubuntu:bionic

REM Copy the generated file from the Docker container to the host machine
docker cp ubuntu.bionic:/ubuntu-bionic-packages.txt ../output

REM Remove the Docker container
docker rm ubuntu.bionic

REM Remove the Docker image
docker rmi ubuntu:bionic