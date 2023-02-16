# Use open Liberty 23.0.0.1-kernel-java11 as the base image
FROM open-liberty:23.0.0.1-kernel-slim-java11-openj9

# Crea la carpeta y cambia los permisos
USER root
RUN mkdir -p /var/lib/apt/lists/partial && chmod -R 777 /var/lib/apt/lists/

# Update the package repository and install the necessary packages
RUN apt-get update && apt-get install -y apt-utils

# Run the command to list all packages
RUN apt-cache dumpavail > /open-23.0.0.1-java11-packages.txt

# Export the generated file outside the container
VOLUME /open-23.0.0.1-java11-packages.txt:/open-23.0.0.1-java11-packages.txt

# Specify the default command to run when the container starts
CMD ["cat", "/open-23.0.0.1-java11-packages.txt"]