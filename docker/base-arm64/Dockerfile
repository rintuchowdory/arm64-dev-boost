FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    build-essential curl git \
    python3 python3-pip ca-certificates

RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && \
    apt-get install -y nodejs

WORKDIR /app
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
