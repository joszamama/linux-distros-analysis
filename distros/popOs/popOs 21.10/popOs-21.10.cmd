@echo off

REM Build the Docker image
docker build -t popos:21.10 .

REM Run the Docker container
docker run --name popos.21.10 -it popos:21.10

REM Copy the generated file from the Docker container to the host machine
docker cp popos.21.10:/popos-21.10-packages.txt .

REM Remove the Docker container
docker rm popos.21.10

REM Remove the Docker image
docker rmi popos:21.10