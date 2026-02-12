# Docker Networking Deep Dive

## Network Drivers

### Bridge
Default network driver enabling container communication within same host.

### Host
Removes network isolation and attaches container directly to host network stack.

### None
Disables networking completely.

---

## Custom Bridge Network

Used to isolate internal services and enable secure inter-container communication.

Command:
docker network create isolated-network

---

## Container Communication Without Compose

Containers communicate using:
- Container name as hostname
- Docker internal DNS

Example:
proxy_pass http://flask-app:5000;

---

## Inspection & Debugging

docker network inspect isolated-network
docker logs <container>
docker exec -it <container> sh

