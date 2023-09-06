# Use Alpine Linux as the base image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install Node.js dependencies
RUN npm install

# Copy the rest of the application files to the container
COPY . .

# Expose a port (if your Node.js app listens on a specific port)
# EXPOSE 3000

# Start your Node.js application
CMD ["node", "app.js"]
