# Docker Volumes & Bind Mounts

## Named Volumes

Managed by Docker.
Stored under /var/lib/docker/volumes.

Example:
docker volume create mysql_data

Advantages:
- Managed lifecycle
- Safer for production
- Decoupled from host path

---

## Bind Mounts

Maps host directory to container.

Example:
-v /host/path:/container/path

Used for:
- Development
- Config injection
- Log access

---

## Volume Lifecycle

Create:
docker volume create <name>

Inspect:
docker volume inspect <name>

Remove:
docker volume rm <name>

Unused cleanup:
docker volume prune

---

## Persistent Database Containers

Database containers must always use named volumes.

Reason:
Container deletion should not delete data.

---

## Production Best Practices

- Never store database data inside container layer
- Always use named volumes
- Use environment variables for credentials
- Restrict DB port exposure
- Backup volumes regularly

