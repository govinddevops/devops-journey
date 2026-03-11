# Linux Archive & Search Commands (Junior DevOps Engineer Reference)

## 1. Archiving and Compression Tools
Efficiently managing disk space and creating backups of configuration files or application logs is a critical DevOps task.

### **tar (Tape Archive)**
Used to bundle multiple files into a single archive file without removing originals.
* **Create an archive:** `tar -cvf backup.tar /path/to/dir`
* **Extract an archive:** `tar -xvf backup.tar`
* **Compressed Archive (Gzip):** `tar -czvf backup.tar.gz /path/to/dir`

### **gzip / gunzip**
The standard Linux compression utility, frequently used for rotating individual log files.
* **Compress a file:** `gzip server.log` (Creates `server.log.gz`)
* **Decompress a file:** `gunzip server.log.gz`

### **zip / unzip**
Essential for cross-platform compatibility (Windows/Linux) during artifact transfers.
* **Recursive Zip:** `zip -r deployment.zip ./src`
* **Extract Zip:** `unzip deployment.zip`

---

## 2. Advanced Search Utilities
The ability to quickly locate files and debug logs is vital for production troubleshooting and CI/CD monitoring.

### **find Command**
Used to locate files and directories based on metadata (name, size, permissions, time).
* **Find by Name:** `find /etc -name "nginx.conf"`
* **Find Files Only:** `find . -type f`
* **Find Modified Files (Last 24h):** `find /var/log -mtime -1`

### **grep (Global Regular Expression Print)**
The primary tool for searching text patterns within files, especially for troubleshooting application errors.
* **Basic Search:** `grep "ERROR" application.log`
* **Case-Insensitive:** `grep -i "critical" system.log`
* **Recursive Search:** `grep -r "API_KEY" ./configs`
* **Show Line Numbers:** `grep -n "fail" build.log`

---

## 3. Production Use Cases
* **Automated Backups:** Using `tar` and `gzip` in cron jobs to snapshot `/etc/` or `/var/www/`.
* **Log Analysis:** Utilizing `grep` to filter live logs for specific request IDs or status codes.
* **Environment Discovery:** Using `find` to identify configuration paths across different environments.

---
*Note: These notes are part of the Junior DevOps Engineer professional documentation set.*
