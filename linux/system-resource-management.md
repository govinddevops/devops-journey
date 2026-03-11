# Linux Infrastructure Management: Disk, Memory & Observability

## 1. Advanced Storage & Filesystem Administration
Monitoring disk health is a primary responsibility to prevent cascading system failures.

### **Disk Utilization (`df` vs `du`)**
* **`df -hT` (Disk Free):** Displays total filesystem usage with Type (ext4, xfs). 
    * *Pro-tip:* Always check `df -i` to monitor **Inodes**. A disk can have space but still fail if it runs out of Inodes (common in sessions/cache folders).
* **`du -sh /var/log/* | sort -h`:** Calculates specific directory sizes. 
    * *DevOps Use Case:* Identifying "Space Hawks" when a partition hits 90%+ utilization.

### **Block Devices & Mounting**
* **`lsblk`:** Lists all block devices and mount points.
* **`/etc/fstab`:** The configuration file for persistent mounting of EBS volumes or NFS shares.

---

## 2. Memory & Performance Analysis
Understanding the difference between "Free" and "Available" RAM is key to performance tuning.

### **Memory Health (`free` & `vmstat`)**
* **`free -h`:** Provides a snapshot of RAM and Swap.
    * *SRE Insight:* High **Swap** usage indicates that physical RAM is exhausted, leading to "Disk Thrashing" and extreme slowness.
* **`vmstat 1 5`:** Reports virtual memory statistics. High `si` (swap-in) and `so` (swap-out) values signify a memory bottleneck.

### **Process Observability (`top` & `htop`)**
* **`top` / `htop`:** Real-time monitoring of CPU/RAM per PID.
* **The OOM Killer:** When RAM is 100% full, the Kernel invokes the **Out of Memory (OOM) Killer** to sacrifice the largest process (often Java, Docker, or MySQL) to save the OS.

---

## 3. Enterprise Logging & Troubleshooting
In a distributed architecture, logs are the "Single Source of Truth."

### **The Logging Hierarchy (`/var/log/`)**
* **`/var/log/syslog` (or `messages`):** The heart of system events.
* **`/var/log/auth.log` (or `secure`):** Tracking SSH attempts and privilege escalations (`sudo`).
* **`/var/log/journal/`:** Binary logs managed by `journalctl` (Standard for systemd services).

### **Log Analysis Workflow**
* **Live Tail:** `tail -f /var/log/nginx/error.log` (Essential for real-time bug tracking).
* **Pattern Search:** `grep -rEi "error|critical|fail" /var/log/` (Fast forensic analysis).
* **Log Rotation:** The `logrotate` utility ensures that logs don't grow indefinitely and crash the `/var` partition.

---

## 4. Production Incident Response (Root Cause Analysis)
When a service goes down, a DevOps Engineer follows this **RCA** (Root Cause Analysis) flow:
1. **Connectivity:** Is the port listening? (`netstat -tulpn`).
2. **Resources:** Is the Disk or RAM full? (`df -h`, `free -h`).
3. **Logs:** Check the last 100 lines of application and system logs (`tail -n 100`).
4. **Service Status:** Is the daemon active? (`systemctl status`).

---

## 5. Senior-Level Interview Points
* **Inodes Exhaustion:** Explain how a disk with 50% free space can still return "No space left on device" errors due to zero remaining Inodes.
* **Buffer/Cache:** Clarify that "Low Free RAM" is often normal in Linux because the Kernel uses it for caching to speed up the system.
* **Log Rotation:** Discuss how `logrotate` prevents disk-full incidents by compressing and purging old logs based on size or age.
* **Soft vs. Hard Limits:** Understanding user-level resource limits set in `/etc/security/limits.conf`.

---
*Maintained by: Junior DevOps Engineer | Infrastructure & SRE Reference*
