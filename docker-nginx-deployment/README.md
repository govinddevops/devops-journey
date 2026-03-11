# Docker Nginx Static Web Project

This project demonstrates containerized deployment of a static website
using Docker and Nginx.

## Tech Stack
- Docker
- Nginx
- HTML

## Build Image
docker build -t emoji-nginx .

## Run Container
docker run -d -p 8080:80 emoji-nginx

## Access
http://localhost:8080

