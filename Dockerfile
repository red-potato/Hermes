# Use a lightweight Debian base
FROM debian:bookworm-slim

# Install dependencies needed by Hermes
RUN apt-get update && apt-get install -y \
    curl \
        xz-utils \
            git \
                python3

                    # Expose the gateway command as the entry point
                    # This ensures it starts automatically on every deployment
                    CMD ["hermes", "gateway", "start"]
                    