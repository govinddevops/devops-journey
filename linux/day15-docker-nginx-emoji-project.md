# Docker + Nginx Static Web Project

## Project Overview
Designed and deployed a lightweight static website using Docker and Nginx.  
The objective was to understand containerized web serving, port mapping, and
real-time container interaction.

---

## Project Description
A Docker container was created using the official Nginx image.  
The default web content was customized to display a personalized HTML page
with emojis and styling, served through Nginx on a mapped host port.

---

## Technical Stack
- Docker
- Nginx (Official Image)
- Linux (Container Environment)
- HTML

---

## Implementation Details

### 1. Container Deployment
- Ran an Nginx container in detached mode
- Exposed container port 80 to host port 8080

```bash
docker run -d -p 8080:80 --name emoji-nginx nginx

