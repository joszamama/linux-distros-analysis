@echo off

REM Build the Docker image
docker build -t neurodebian:hirsute .

REM Run the Docker container
docker run --name neurodebian.hirsute -it neurodebian:hirsute

REM Copy the generated file from the Docker container to the host machine
docker cp neurodebian.hirsute:/neurodebian-hirsute-packages.txt .

REM Remove the Docker container
docker rm neurodebian.hirsute

REM Remove the Docker image
docker rmi neurodebian:hirsute