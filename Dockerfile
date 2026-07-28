# Use the official Node.js LTS image
FROM node:20-alpine

# Create app directory
WORKDIR /app

# Copy package files first (for Docker layer caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the project
COPY . .

# Expose the application's port
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
