FROM alpine:latest

# Install dependencies
RUN apk update && apk add --no-cache bash curl perl cowsay

# Set working directory
WORKDIR /app

# Copy app files
COPY wisecow.sh .

# Make script executable
RUN chmod +x wisecow.sh

# Expose port used by Wisecow app
EXPOSE 4499

# Run the app
CMD ["./wisecow.sh"]
