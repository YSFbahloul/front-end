FROM node:18-alpine

# Set the working directory to /app
WORKDIR /app

# Install Angular CLI globally
RUN npm install -g @angular/cli

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install the project dependencies
RUN npm install

# Set permissions (use cautiously in production environments)
RUN chmod -R 777 /app

# Copy the rest of the application files
COPY . .

# Expose the port the app will run on
EXPOSE 4200

# Start the Angular development server, binding to all interfaces
CMD ["npm", "start"]
