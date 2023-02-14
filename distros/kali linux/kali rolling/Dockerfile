# Use Kali Linux as the base image
FROM kalilinux/kali-rolling

# Update the package repository and install the necessary packages
RUN apt-get update && apt-get install -y apt-utils

# Run the command to list all packages
RUN apt-cache dumpavail > /kalirolling-packages.txt

# Export the generated file outside the container
VOLUME /kalirolling-packages.txt:/kalirolling-packages.txt

# Specify the default command to run when the container starts
CMD ["cat", "/kalirolling-packages.txt"]
