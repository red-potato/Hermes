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

                    # Expose the gateway command as the entry point
                    # This ensures it starts automatically on every deployment
                    CMD ["/usr/local/bin/hermes", "gateway", "start"]
                    