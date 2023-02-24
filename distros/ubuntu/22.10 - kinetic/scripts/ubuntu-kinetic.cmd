@echo off

REM Build the Docker image
docker build -t ubuntu:kinetic ../

REM Run the Docker container
docker run --name ubuntu.kinetic -it ubuntu:kinetic

REM Copy the generated file from the Docker container to the host machine
docker cp ubuntu.kinetic:/ubuntu-kinetic-packages.txt ../output

REM Remove the Docker container
docker rm ubuntu.kinetic

REM Remove the Docker image
docker rmi ubuntu:kinetic