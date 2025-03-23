#  Advanced System Monitoring & Log Analysis (SRE Perspective)

## 1. Infrastructure Monitoring Philosophy
In a production DevOps environment, monitoring is not just about checking if a server is "up." It's about analyzing performance bottlenecks (CPU, Memory, I/O) before they cause a downtime.

### **The Four Golden Signals:**
* **Latency:** Time taken to service a request.
* **Traffic:** Demand placed on the system.
* **Errors:** Rate of requests that fail.
* **Saturation:** How "full" your service is (CPU/RAM limits).

---

## 2. Process & Resource Monitoring (Deep Dive)
| Command | Professional Use Case |
| :--- | :--- |
| `top` / `htop` | Interactive real-time process management and resource spikes. |
| `ps aux` | Detailed snapshot of all processes (User, PID, %CPU, %MEM). |
| `uptime` | Checking **Load Average** (1, 5, 15 min intervals) to detect CPU over-utilization. |
| `free -h` | Analyzing RAM usage, specifically "Available" vs "Free" memory. |
| `vmstat 1 5` | Monitoring system thrashing and context switching in 1-second intervals. |

---

## 3. Storage & I/O Troubleshooting
Disk saturation can crash databases and CI/CD runners.
* **Filesystem Usage:** `df -h` (Human-readable disk space check).
* **Directory Analysis:** `du -sh /var/log/*` (Identifying large log files or "hidden" space consumers).
* **Block Devices:** `lsblk` (Verifying mounted volumes and partitions).
* **I/O Wait:** `iostat -xz 1` (Advanced: Checking if the CPU is waiting for the Disk/SSD to respond).

---

## 4. Process Lifecycle & Priority Management
* **Graceful Exit:** `kill <PID>` (Sends SIGTERM - allows process to cleanup).
* **Forceful Termination:** `kill -9 <PID>` (Sends SIGKILL - Kernel kills it immediately).
* **Process Priority:** * `nice -n 10 ./script.sh` (Start a process with lower priority).
    * `renice -n -5 -p <PID>` (Increase priority of an already running critical process).

---

## 5. Enterprise Log Management (`/var/log/`)
In Linux, logs are the "truth." Knowing where to look saves hours of debugging.

* **`/var/log/syslog` / `messages`:** Centralized system activity logs.
* **`/var/log/auth.log` / `secure`:** SSH logins and security-related events.
* **`/var/log/dmesg`:** Kernel-level ring buffer (Hardware/Boot errors).
* **`/var/log/nginx/` or `/var/log/mysql/`:** Application-specific logs.

### **Log Analysis Commands:**
* **Live Debugging:** `tail -f /var/log/syslog` (Streaming logs in real-time).
* **Pattern Matching:** `grep -i "critical" /var/log/auth.log` (Searching for security breaches).
* **Paging:** `less +G /var/log/syslog` (Open at the end of a large file).

---

## 6. Experience-Based Best Practices (5+ Years Level)
* **Log Rotation:** Understand `logrotate` configuration. If logs aren't rotated, your `/var` partition will fill up, causing a system-wide crash.
* **Zombie Processes:** Identify `Z` status in `ps` output. These processes consume PID slots but no memory—clean them up by killing the parent.
* **The "OOM Killer":** Be aware of the *Out of Memory Killer*. When RAM is exhausted, Linux will start killing the largest processes (often your Database or Docker) to save the system.
* **I/O Wait Awareness:** High CPU usage might just be "I/O Wait." Don't add more CPU; check if your Disk is slow or failing.

---
*Documentation maintained by: Junior DevOps Engineer | Observability & Logging*

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
