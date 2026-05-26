# Use a lightweight Debian base
FROM debian:bookworm-slim

# Install dependencies needed by Hermes
RUN apt-get update && apt-get install -y \
    curl \
    xz-utils \
    git \
    python3 \
    && rm -rf /var/lib/apt/lists/*

# Install Hermes
RUN curl -fsSL https://raw.githubusercontent.com/NousResearch/hermes-agent/main/scripts/install.sh | bash

# Ensure the bin directory is in the PATH
ENV PATH="/root/.local/bin:${PATH}"

# Start the gateway directly
CMD ["hermes", "gateway", "run"]