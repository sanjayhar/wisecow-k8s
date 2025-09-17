# Use Ubuntu 20.04 base image
FROM ubuntu:20.04

# Install required packages
RUN apt-get update && apt-get install -y \
    bash \
    curl \
    fortune-mod \
    cowsay \
    netcat \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy the Wisecow script into the container
COPY wisecow.sh .

# Make the script executable
RUN chmod +x wisecow.sh

# Expose the port Wisecow uses
EXPOSE 4499

# Run the Wisecow script when container starts
CMD ["./wisecow.sh"]
