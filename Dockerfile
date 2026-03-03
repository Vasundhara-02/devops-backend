# Use Node 18
FROM node:18

# Create working directory
WORKDIR /usr/src/app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of application
COPY . .

# Expose port
EXPOSE 3000

# Start app
CMD ["npm", "start"]