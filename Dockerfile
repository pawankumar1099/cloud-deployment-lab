# 1. Use the Node.js base image
FROM node:22-alpine

# 2. Set the working directory
WORKDIR /app

# 3. Copy dependency files
COPY package*.json ./

# 4. Install dependencies
RUN npm install

# 5. Copy the project files
COPY . .

# 6. Document the application port
EXPOSE 3000

# 7. Start the application
CMD ["npm", "start"]