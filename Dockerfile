FROM node:20-alpine AS builder

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY app/package*.json ./
RUN npm install --omit=dev

# Bundle app source
COPY app/ .

# Production image
FROM node:20-alpine

# Create app directory
WORKDIR /usr/src/app

# Copy built node modules and app source
COPY --from=builder /usr/src/app/node_modules ./node_modules
COPY --from=builder /usr/src/app/app.js ./app.js

# Expose port
EXPOSE 3000

# Set user to non-root
USER node

# Start command
CMD [ "node", "app.js" ]