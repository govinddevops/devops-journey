# Docker Image Optimization – Production Perspective

## Multi-Stage Builds

Separates build environment from runtime.

Benefits:
- Smaller final image
- Reduced attack surface
- Clean runtime environment

---

## Slim Images

Use minimal base images:
node:18-alpine
python:slim
distroless images

Benefits:
- Reduced size
- Faster deployment
- Improved security

---

## .dockerignore

Prevents unnecessary files from being sent to Docker daemon.

Common exclusions:
node_modules
.git
logs
.env

---

## Layer Caching Strategy

Best practice:
1. Copy package.json first
2. Install dependencies
3. Copy source code

Improves rebuild speed.

---

## Image Tagging Strategy

Use semantic versioning:
v1.0.0
v1.1.0

latest → stable release

Never deploy :latest blindly in production.

