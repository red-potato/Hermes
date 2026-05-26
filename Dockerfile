FROM debian:bookworm-slim

# Install only the system dependencies required by the existing binary
RUN apt-get update && apt-get install -y \
    python3 \
        git \
            && rm -rf /var/lib/apt/lists/*

            # Point to the existing binary in your volume
            # We use an ENTRYPOINT to ensure the command always runs from the volume
            ENTRYPOINT ["/opt/data/bin/hermes"]
            CMD ["gateway", "start"]
            
                    