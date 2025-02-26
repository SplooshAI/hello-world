FROM node:20-alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY app/package*.json ./
RUN npm install

# Bundle app source
COPY app/ .

# Expose port
EXPOSE 3000

# Set user to non-root
USER node

# Start command - use nodemon in development, node in production
CMD if [ "$NODE_ENV" = "development" ]; then npm run dev; else npm start; fi