# Use open Liberty 22.0.0.2-kernel-java11 as the base image
FROM open-liberty:22.0.0.2-kernel-slim-java11-openj9

# Crea la carpeta y cambia los permisos
USER root
RUN mkdir -p /var/lib/apt/lists/partial && chmod -R 777 /var/lib/apt/lists/

# Update the package repository and install the necessary packages
RUN apt-get update && apt-get install -y apt-utils

# Run the command to list all packages
RUN apt-cache dumpavail > /open-22.0.0.2-java11-packages.txt

# Export the generated file outside the container
VOLUME /open-22.0.0.2-java11-packages.txt:/open-22.0.0.2-java11-packages.txt

# Specify the default command to run when the container starts
CMD ["cat", "/open-22.0.0.2-java11-packages.txt"]