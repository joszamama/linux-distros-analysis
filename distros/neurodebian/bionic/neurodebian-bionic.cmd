@echo off

REM Build the Docker image
docker build -t neurodebian:bionic .

REM Run the Docker container
docker run --name neurodebian.bionic -it neurodebian:bionic

REM Copy the generated file from the Docker container to the host machine
docker cp neurodebian.bionic:/neurodebian-bionic-packages.txt .

REM Remove the Docker container
docker rm neurodebian.bionic

REM Remove the Docker image
docker rmi neurodebian:bionic