# Container Network Isolation Lab

Production-style implementation of Docker custom bridge networking with reverse proxy routing.

## Architecture

Nginx (Reverse Proxy) → Flask Application

## Key Concepts

- Custom bridge network
- Internal DNS resolution
- Container-to-container communication
- Network isolation
- Debugging & inspection

## Security Model

- Application container not exposed to host
- Only reverse proxy exposes port 8080
- Isolated internal network

