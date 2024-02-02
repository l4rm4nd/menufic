# Use an official Node.js runtime as the base image
FROM node:21.6

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Clear npm cache (optional)
RUN npm cache clean --force && npm install -g npm@latest && npm install

# Copy the rest of the project files to the container
COPY . .

# Expose necessary ports
EXPOSE 3000

# Start your application in production mode
CMD ["npm", "run", "prod"]
