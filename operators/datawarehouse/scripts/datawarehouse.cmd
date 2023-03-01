@echo OFF

REM Build the Docker image
docker build -t datawarehouse ../

REM Run the Docker image
docker run --name data.warehouse -it -p 5432:5432 -d datawarehouse

REM Connect to the Docker container
docker exec -it data.warehouse bash

REM Stop the Docker container
docker stop data.warehouse

REM Remove the Docker container
docker rm data.warehouse

REM Remove the Docker image
docker rmi datawarehouse