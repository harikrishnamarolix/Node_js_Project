# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose the port your app listens on (if needed)
EXPOSE 3000

# Define environment variables for Stripe credentials
ENV STRIPE_API_KEY=stripe

# Start your Node.js application
CMD [ "node", "server.js" ]
