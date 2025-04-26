# Use official Node.js image
FROM node:current-alpine3.21

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY app/package*.json ./
RUN npm ci

# Create a non-root group and user
RUN addgroup -S appgroup \
 && adduser  -S appuser -G appgroup

# Copy application code and adjust ownership
COPY app .
RUN chown -R appuser:appgroup /app

# Switch to the non-root user
USER appuser

# Add labels
LABEL org.opencontainers.image.title="Node App" \
      org.opencontainers.image.version=2.3.3 \
      com.example.project.environment=development  

# Start the application
CMD ["npm", "start"]