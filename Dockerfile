FROM node:18-alpine
WORKDIR /app

# Copy everything INCLUDING node_modules
# We pre-install packages locally to avoid network issues inside Docker
COPY . .

EXPOSE 3000
CMD ["node", "index.js"]
