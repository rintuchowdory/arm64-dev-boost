# Use the Alpine version for a significantly smaller and faster image
FROM node:20-alpine

# Install pnpm and tune for performance
RUN npm install -g pnpm && \
    pnpm config set store-dir /app/.pnpm-store

# Add basic build tools if needed (optional, keeping it slim)
RUN apk add --no-interactive bash

WORKDIR /app

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
