#   Docker Compose with Database (Production Stack)

## Objective

Implemented a production-style multi-container architecture using:

- Flask Application
- MySQL Database
- NGINX Reverse Proxy
- Persistent Volume
- Database Initialization Script

---

## Architecture

Client → NGINX → Flask → MySQL

---

## Key Production Implementations

### 1. Database Persistence

Used named volume:

db_data:/var/lib/mysql

Ensures data survives container restarts and rebuilds.

---

### 2. Initialization Script

Used:

/docker-entrypoint-initdb.d/init.sql

Ensures database and tables are automatically provisioned during first startup.

---

### 3. Service Dependency

depends_on ensures application waits for database container startup.

---

### 4. Health Monitoring

MySQL healthcheck implemented using mysqladmin ping.

---

### 5. Reverse Proxy Layer

NGINX routes external traffic to internal Flask service.

---

## Production Design Principles

- Stateless application container
- Persistent database layer
- Automated schema provisioning
- Service orchestration
- Network isolation
- Controlled restart behavior

---

## Outcome

Successfully deployed a production-style containerized backend stack integrating application, database, and reverse proxy with persistence and initialization automation.

