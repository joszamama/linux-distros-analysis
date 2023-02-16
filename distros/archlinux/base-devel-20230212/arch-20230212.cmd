@echo off

REM Build the Docker image
docker build -t arch:20230212 .

REM Run the Docker container
docker run --name arch.20230212 -it arch:20230212

REM Copy the generated file from the Docker container to the host machine
docker cp arch.20230212:/arch-20230212-packages.txt .

REM Remove the Docker container
docker rm arch.20230212

REM Remove the Docker image
docker rmi arch:20230212