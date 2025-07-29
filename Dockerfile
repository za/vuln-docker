# Use Debian as the base image
FROM debian:latest

# Set working directory
WORKDIR /root

# Run as root (default user in Debian image is root)
USER root

# Install any required packages (example: update and install curl)
RUN apt-get update && apt-get install -y curl

# Default
