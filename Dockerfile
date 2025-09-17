FROM ubuntu:20.04

# Install dependencies
RUN apt-get update && apt-get install -y \
    fortune-mod \
    cowsay \
    netcat \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy app files
COPY wisecow.sh /app/wisecow.sh

# Make script executable
RUN chmod +x /app/wisecow.sh

# Expose port 4499
EXPOSE 4499

# Run the app
CMD ["./wisecow.sh"]
