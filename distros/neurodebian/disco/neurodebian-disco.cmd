@echo off

REM Build the Docker image
docker build -t neurodebian:disco .

REM Run the Docker container
docker run --name neurodebian.disco -it neurodebian:disco

REM Copy the generated file from the Docker container to the host machine
docker cp neurodebian.disco:/neurodebian-disco-packages.txt .

REM Remove the Docker container
docker rm neurodebian.disco

REM Remove the Docker image
docker rmi neurodebian:disco