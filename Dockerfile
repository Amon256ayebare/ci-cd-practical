# Use official Node.js runtime
FROM node:18

# Set working directory
WORKDIR /app

# Copy package files (if Node project)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app
COPY . .

# Expose port
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
