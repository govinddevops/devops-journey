# DAY 8 – Disk, Memory & Logs (Linux + DevOps)

## 1. Disk Management (Storage Basics)

### df (Disk Free)
Used to check disk space usage.

Command:
df -h

- Shows total disk size
- Used space
- Available space
- Mounted locations

Real-world:
Production server disk full = app crash

---

### du (Disk Usage)
Used to check directory/file size.

Command:
du -sh folder_name

Example:
du -sh /var/log

Real-world:
Helps find which folder is consuming more space

---

## 2. Memory Management

### free
Shows RAM usage.

Command:
free -h

- total memory
- used memory
- free memory
- swap memory

Real-world:
High memory usage → application slow/crash

---

### top
Shows live process & memory usage.

Command:
top

- PID
- CPU usage
- Memory usage

Used in production to find:
- High CPU process
- Memory leak

---

## 3. Logs in Linux

### What are logs?
Logs are files that store system & application events.

Common log directory:
cd /var/log

Important log files:
- syslog
- auth.log
- dmesg

---

### Viewing logs

Command:
cat filename
less filename
tail -f filename

Example:
tail -f /var/log/syslog

Real-world:
Used during:
- App crash
- Server reboot
- Login failure

---

## 4. DevOps Production Scenario

Problem:
Website down suddenly.

Steps:
1. Check disk (df -h)
2. Check memory (free -h)
3. Check CPU (top)
4. Check logs (/var/log)

This is DAILY DevOps work.

---

## 5. Interview Questions (Important)

Q1. Difference between df and du?
- df → disk space
- du → folder/file size

Q2. Which command shows real-time processes?
- top

Q3. Where are logs stored?
- /var/log

Q4. Why logs are important?
- Debugging
- Monitoring
- Root cause analysis

---

## DAY 8 STATUS
✔ Disk basics completed  
✔ Memory basics completed  
✔ Logs understanding completed  
✔ DevOps troubleshooting mindset built
