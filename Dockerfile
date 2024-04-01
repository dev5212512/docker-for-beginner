# Start with an OS
# Install Node
FROM node:alpine

# Copy application files
COPY . /app

# Run node app.js
CMD ["node", "/app/app.js"]

# OR
# WORKDIR /app
# CMD ["node", "app.js"]
