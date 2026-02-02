# DAY 7 – Process & Monitoring (DevOps Core)

## What is a Process?
A process is a running instance of a program.
Every command we run creates a process.

Example:
sleep 300

This creates a background process that runs for 300 seconds.

---

## Process States
R – Running
S – Sleeping
T – Stopped
Z – Zombie (process finished but not cleaned)

Zombie process interview favorite question.

---

## ps Command (Process Snapshot)
ps -ef

Shows:
UID   PID   PPID   CMD

PID = Process ID (important for kill)

---

## grep with ps
ps -ef | grep sleep

Used to find a specific process.

---

## kill Command
kill PID        → graceful stop
kill -9 PID     → force kill (dangerous)

kill -9 should be last option.

---

## top Command (Linux Only)
Used to monitor:
CPU usage
Memory usage
Running processes

In real Linux:
top
htop (better version)

---

## Why Monitoring is Important in DevOps?
• Detect high CPU
• Detect memory leak
• Detect stuck processes
• Ensure uptime

Production servers crash mostly due to:
1. Memory leak
2. Infinite loop
3. Disk full

---

## Real World DevOps Scenario
A Java app consumes 95% RAM.
Server becomes slow.
DevOps engineer:
• Identifies process using top
• Restarts service
• Adds monitoring alert
• Prevents future crash

---

## Interview Questions
Q: Difference between process and service?
Process → temporary
Service → long-running background process

Q: What is Zombie process?
A process that completed but not removed from process table.

Q: Why kill -9 is dangerous?
It does not allow cleanup.

---

## DevOps Tools Using Monitoring
• Prometheus
• Grafana
• Nagios
• CloudWatch
