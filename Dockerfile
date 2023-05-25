# Specify the base image
FROM node:18-alpine
ENV NODE_ENV=production
# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json (if available) to the working directory
COPY ["package.json", "package-lock.json*", "./"]

# Install project dependencies
RUN npm install --production

# Copy the entire project to the working directory
COPY . .

# Expose a port if your Node.js application listens on a specific port
# EXPOSE 3000

# Specify the command to run your Node.js application
CMD ["node", "index.js"]
