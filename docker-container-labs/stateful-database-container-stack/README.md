# Stateful Database Container Stack

Production-style implementation of MySQL container with persistent named volumes.

## Architecture

Adminer (DB UI) → MySQL Container
Custom bridge network used for internal communication.

## Key Implementations

- Named Docker volume for persistent storage
- Environment variable management via .env
- Restart policies
- Isolated backend network
- Data lifecycle validation

## Persistence Strategy

Data stored in named volume:
mysql_data → /var/lib/mysql

Ensures database state survives container restart.

