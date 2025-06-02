# 1. Builder stage: install and build everything
FROM node:current-alpine3.22 AS builder

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY app/package*.json ./
RUN npm ci && rm -rf /var/cache/apk/* 

# Copy source so you could run build scripts here
COPY app .
# e.g., RUN npm run build

# 2. Production stage: runtime-only image
FROM node:current-alpine3.22 AS production

# Set working directory
WORKDIR /app

# Install just runtime deps—no dev tools or caches
COPY app/package*.json ./
RUN npm ci --omit=dev

# Bring in built app (or source) from builder
COPY --from=builder /app ./

# Create a non-root group and user
RUN addgroup -S appgroup \
    && adduser  -S appuser -G appgroup \
    && chown -R appuser:appgroup /app

# Switch to the non-root user
USER appuser

# Add labels
LABEL org.opencontainers.image.title="Node App" \
      org.opencontainers.image.version=2.3.5 \
      com.example.project.environment=development  

# Start the application
CMD ["npm", "start"]