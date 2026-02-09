# Day 16 – Docker Compose (Multi-Container Setup)

## Overview
Docker Compose was used to define and manage multi-container applications
through a single YAML configuration file. This allows running multiple
services together with one command.

---

## Why Docker Compose
- Manage multiple containers easily
- One configuration file for complete setup
- Simplifies container orchestration
- Ideal for development and testing environments

---

## Core Components of docker-compose.yml
- version: Defines compose file format
- services: Defines containers (web, db, etc.)
- image: Docker image to be used
- ports: Port mapping between host and container
- volumes: Persistent storage
- networks: Container communication

---

## Practical Implementation
- Created a docker-compose.yml file
- Defined an Nginx service
- Exposed container port to host machine
- Verified container startup using Docker Compose

---

## Common Commands Used
```bash
docker-compose up
docker-compose up -d
docker-compose down
docker-compose ps
docker-compose logs

