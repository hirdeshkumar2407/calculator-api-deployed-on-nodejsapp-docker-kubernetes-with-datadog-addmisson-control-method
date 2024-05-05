# Use Node.js 12 as base image
FROM node:14

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose port 3000 (the port your app runs on)
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]
