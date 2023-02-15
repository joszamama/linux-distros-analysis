# Use Alpine Linux 3.10 as the base image
FROM alpine:3.10

# Update the package repository and install the necessary packages
RUN apk update && apk add --no-cache apk-tools

# Run the command to list all packages
RUN apk search --quiet --no-cache . > /alpine-3.10-packages.txt

# Export the generated file outside the container
VOLUME /alpine-3.10-packages.txt:/alpine-3.10-packages.txt

# Specify the default command to run when the container starts
CMD ["cat", "/alpine-3.10-packages.txt"]
