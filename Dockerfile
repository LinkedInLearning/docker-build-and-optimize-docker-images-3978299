# Use official Node.js image
FROM node:current-alpine3.21

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY app/package*.json ./
RUN npm ci

# Copy application code
COPY app .

# Add labels
LABEL org.opencontainers.image.title="Node App" \
      org.opencontainers.image.version="2.3.1"

# Start the application
CMD ["npm", "start"]