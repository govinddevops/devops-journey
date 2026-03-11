# Docker Registry & Image Publishing

## DockerHub Push Workflow

1. docker build
2. docker tag
3. docker login
4. docker push

---

## Public vs Private Repository

Public:
Accessible globally.

Private:
Access restricted.
Used for internal production images.

---

## Tagging Strategy

v1.0.0 → Stable release
commit-sha → Immutable traceability
latest → Rolling pointer

Best practice:
Never rely solely on latest in production.

---

## Commit SHA Tagging

Ensures:
- Reproducible builds
- Rollback capability
- Version traceability

---

## Login & Auth Issues

Common errors:
unauthorized: incorrect username or password

Resolution:
- Use DockerHub access token
- Validate repository name
- Confirm push permissions

---

## Production Recommendation

- Use private registry for sensitive workloads
- Use versioned tags for deployments
- Automate publishing via CI/CD

