# Use a Node.js image as the base for the container
FROM node:20-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy all other project files to the container
COPY . .

# Expose the port that the server will listen on
EXPOSE 8080

# The command to start the server when the container is run
CMD ["npm", "start"]
