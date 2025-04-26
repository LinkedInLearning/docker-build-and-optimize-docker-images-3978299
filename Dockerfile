###################################
### Good Dockerfile ###############
###################################

# Use official Node.js image
FROM node:current-alpine3.21

# Set working directory
WORKDIR /app

# Install only production dependencies and clean cache in one layer
COPY app/package*.json ./
RUN npm ci --production && \
    npm cache clean --force

# Copy application code
COPY app .

# Add metadata labels
LABEL org.opencontainers.image.title="Node App" \
      org.opencontainers.image.version="2.3.3" \
      com.example.project.environment="production"

# Start the application
CMD ["npm", "start"]

#########################################################
### BAD Dockerfile
#########################################################
# # Use official Node.js image
# FROM node:current-alpine3.21

# # Set working directory
# WORKDIR /app

# # Copy and install dependencies
# COPY app/package*.json ./
# RUN npm install

# # Install global tools we don’t need in production
# RUN npm install -g eslint nodemon

# # Copy application code
# COPY app .

# # Run tests inside the final image (wastes space!)
# #RUN npm test

# # Create a logs directory in its own layer
# RUN mkdir ./logs

# # Add labels
# LABEL org.opencontainers.image.title="Node App" \
#       org.opencontainers.image.version="2.3.3" \
#       com.example.project.environment=development  

# # Start the application
# CMD ["npm", "start"]