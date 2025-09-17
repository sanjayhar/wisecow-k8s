FROM alpine:latest

# Install required packages (if your script needs curl, cowsay, etc.)
RUN apk add --no-cache bash curl cowsay

# Set working directory
WORKDIR /app

# Copy wisecow script into the image
COPY wisecow.sh .

# Make it executable
RUN chmod +x wisecow.sh

# Expose port (change 8080 if your script uses a different one)
EXPOSE 8080

# Run the script when container starts
CMD ["./wisecow.sh"]
