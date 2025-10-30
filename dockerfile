# Use official node image
FROM node:20-alpine

# Create workdir
WORKDIR /usr/src/app

# Install deps
COPY package*.json ./
RUN npm ci --only=production

# Copy app
COPY . .

# Expose port
EXPOSE 3000

# Start
CMD ["node", "src/index.js"]

