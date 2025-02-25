# Linux Command Reference (Professional Guide)

## 1. System Information & Monitoring
Monitoring system health and identifying resource bottlenecks is a core responsibility in any environment.

* **Check System Status:** `top` (Real-time process monitoring)
* **Check Memory Usage:** `free -h` (Human-readable RAM stats)
* **Check Disk Space:** `df -h` (Disk filesystem usage)
* **Check Directory Size:** `du -sh /path/to/dir`
* **Check Kernel Version:** `uname -a`
* **System Uptime:** `uptime`

---

## 2. File & Directory Management
Standard operations for navigating and managing the Linux filesystem.

* **Print Working Directory:** `pwd`
* **List Files:** `ls -la` (Shows hidden files and detailed permissions)
* **Create Directory:** `mkdir -p /path/to/dir` (Creates parent directories if they don't exist)
* **Copy Files/Folders:** `cp -r source destination`
* **Move/Rename:** `mv source destination`
* **Remove Files/Folders:** `rm -rf file_or_dir` (Use with caution in production)
* **Create Empty File:** `touch filename.txt`

---

## 3. Permissions & Ownership
Ensuring the security and accessibility of files within a multi-user or containerized environment.

* **Change Permissions:** `chmod 755 filename`
* **Change Ownership:** `chown user:group filename`
* **Recursive Ownership:** `chown -R user:group /directory`
* **Check Permissions:** `ls -l`

---

## 4. Networking & Connectivity
Troubleshooting connectivity between microservices and external APIs.

* **Check IP Address:** `ip addr show` or `ifconfig`
* **Test Connectivity:** `ping google.com`
* **Check Open Ports:** `netstat -tulpn` or `ss -tulpn`
* **Download Files:** `curl -O https://example.com/file.zip` or `wget https://url.com`
* **DNS Lookup:** `nslookup example.com` or `dig example.com`

---

## 5. Process Management
Controlling background services and application instances.

* **Find Process ID (PID):** `ps aux | grep "service_name"`
* **Kill a Process:** `kill -9 <PID>`
* **System Services:** `systemctl status/start/stop/restart nginx`
* **View Logs in Real-time:** `tail -f /var/log/syslog`

---

## 6. User Management
Managing access for team members and service accounts.

* **Add New User:** `sudo adduser username`
* **Switch User:** `su - username`
* **Execute as Root:** `sudo command`
* **Check Current User:** `whoami`

---
*Note: This reference is maintained as part of the Junior DevOps Engineer technical documentation.*

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
