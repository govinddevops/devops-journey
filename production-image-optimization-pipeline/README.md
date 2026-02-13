# Production Image Optimization Pipeline

This project demonstrates production-grade Docker image optimization techniques.

## Key Implementations

- Multi-stage build for smaller final image
- Alpine-based slim base image
- Layer caching optimization
- .dockerignore usage
- Versioned and latest tagging strategy

## Optimization Strategy

1. Dependencies installed before copying full source to leverage caching.
2. Builder stage separated from runtime stage.
3. Production-only dependencies installed.
4. Slim alpine base image used.
5. Ignored unnecessary files via .dockerignore.

## Image Tagging Strategy

v1 → immutable release
latest → rolling stable tag

