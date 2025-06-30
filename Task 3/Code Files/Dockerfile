# Use alpine node image
FROM node:18-alpine

# Set environment variables
ENV HOST=0.0.0.0
ENV PORT=3000
ENV NODE_OPTIONS=--openssl-legacy-provider

# Set work directory
WORKDIR /app

# Install bash (good for scripts)
RUN apk add --no-cache bash

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy app source code
COPY . .

# Expose the port
EXPOSE 3000

# Run the app
CMD ["npm", "start"]
