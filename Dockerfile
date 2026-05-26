# Use a lightweight Debian base
FROM debian:bookworm-slim

# Install dependencies needed by Hermes
RUN apt-get update && apt-get install -y