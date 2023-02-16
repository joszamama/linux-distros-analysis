# Use Websphere Liberty 23.0.0.1-kernel-java8-ibmjava as the base image
FROM websphere-liberty:23.0.0.1-kernel-java8-ibmjava

# Crea la carpeta y cambia los permisos
USER root
RUN mkdir -p /var/lib/apt/lists/partial && chmod -R 777 /var/lib/apt/lists/

# Update the package repository and install the necessary packages
RUN apt-get update && apt-get install -y apt-utils

# Run the command to list all packages
RUN apt-cache dumpavail > /websphere-23.0.0.1-java8-packages.txt

# Export the generated file outside the container
VOLUME /websphere-23.0.0.1-java8-packages.txt:/websphere-23.0.0.1-java8-packages.txt

# Specify the default command to run when the container starts
CMD ["cat", "/websphere-23.0.0.1-java8-packages.txt"]