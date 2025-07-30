# Use Debian as the base image
FROM debian:12.6

# Create a non-root user and group
RUN groupadd --system appuser && useradd --system --create-home --gid appuser appuser 

# Set working directory
WORKDIR /home/appuser

# Install any required packages (example: update and install curl)
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

# Switch to non-root user
USER appuser

# Default command
CMD ["/bin/bash"]