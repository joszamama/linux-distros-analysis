@echo off

REM Build the Docker image
docker build -t neurodebian:artful .

REM Run the Docker container
docker run --name neurodebian.artful -it neurodebian:artful

REM Copy the generated file from the Docker container to the host machine
docker cp neurodebian.artful:/neurodebian-artful-packages.txt .

REM Remove the Docker container
docker rm neurodebian.artful

REM Remove the Docker image
docker rmi neurodebian:artful