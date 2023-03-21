# Set base image
FROM node:14

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy source code to the container
COPY . .

# Set environment variables
ENV PORT=3000

# Expose the port
EXPOSE ${PORT}

# Start the application
CMD ["npm", "start"]
