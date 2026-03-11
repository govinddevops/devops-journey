#  Nginx Web Server Deployment & WSL2 Systemd Integration

## 1. Objective
Deploying a production-grade Nginx server on Ubuntu (WSL2) to simulate real-world DevOps infrastructure management, focusing on service control and troubleshooting.

## 2. Installation & Core Commands
```bash
sudo apt update && sudo apt install nginx -y  # Install Nginx
sudo nginx -t                                 # Verify Config Syntax (Critical)
sudo systemctl reload nginx                   # Apply changes without downtime
## 3. WSL2 Systemd Fix (The "Init" Error)
If systemctl fails with "System has not been booted with systemd", follow these steps:

Edit Config: sudo nano /etc/wsl.conf

Add Content: ```ini
[boot]
systemd=true

Restart: Open PowerShell and run wsl --shutdown, then restart your terminal.

## 4. Operational Directory Map
Global Config: /etc/nginx/nginx.conf

VHost Configs: /etc/nginx/sites-available/ (Active sites link to sites-enabled)

Web Root: /var/www/html/ (Static content location)

Log Files: /var/log/nginx/access.log & error.log (Primary debug source)

## 5. Junior DevOps Experience Insights
Port Conflict: Use sudo ss -tulpn | grep :80 if Nginx fails to bind to the port.

Permission Hardening: Ensure /var/www/html is owned by www-data for proper access.

Health Check: Always verify with curl -I localhost to confirm a 200 OK status.

#Documentation for Junior DevOps Engineer Reference#
