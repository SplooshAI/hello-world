FROM node:18-alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY app/package*.json ./
RUN npm install

# Bundle app source
COPY app/ .

# Expose port
EXPOSE 3000

# Start command
CMD [ "node", "app.js" ]