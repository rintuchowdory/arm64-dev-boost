# Use a more specific and lighter base image
FROM ubuntu:22.04

# Avoid interactive prompts during build
ENV DEBIAN_FRONTEND=noninteractive

# Optimize apt-get: combine commands, clean up cache, and use --no-install-recommends
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    curl \
    git \
    python3 \
    python3-pip \
    ca-certificates \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install Node.js using the official script but clean up after
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && \
    apt-get install -y --no-install-recommends nodejs && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
