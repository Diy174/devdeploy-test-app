# Dockerfile
FROM node:18-alpine
WORKDIR /app

# Fix for corporate/ISP proxy with self-signed certificates
# Tells npm to not verify SSL certificates when downloading packages
ENV NODE_TLS_REJECT_UNAUTHORIZED=0
RUN npm config set strict-ssl false

COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["node", "index.js"]
