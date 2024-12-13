# Use the official Ubuntu image
FROM ubuntu:latest

# Prevent prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Update package list and install required tools
RUN apt-get update && apt-get install -y \
    iputils-ping \
    telnet \
    net-tools \
    && apt-get clean

# Set the default command to keep the container running
CMD ["tail", "-f", "/dev/null"]
