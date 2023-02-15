# Use Alpine Linux 3.14 as the base image
FROM alpine:3.14

# Update the package repository and install the necessary packages
RUN apk update && apk add apk-tools

# Run the command to list all packages
RUN apk list > /alpine-3.14-packages.txt

# Install required packages to extract package information
RUN apk add --no-cache --virtual .build-deps dpkg-dev

# Loop through each package in the list and extract the package information
RUN for pkg in $(cat /alpine-3.14-packages.txt | cut -d' ' -f1); do \
      apk info -L $pkg | awk '{print "Package:",$1; print "Version:",$2; print "Description:",$3}'; \
    done > /alpine-3.14-packages-details.txt

# Export the generated file outside the container
VOLUME /alpine-3.14-packages-details.txt:/alpine-3.14-packages-details.txt

# Specify the default command to run when the container starts
CMD ["cat", "/alpine-3.14-packages-details.txt"]
