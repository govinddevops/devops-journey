========================
DAY 13 – LINUX SYSTEM MONITORING & LOGS
========================

1) System Monitoring Basics
Linux mein system admin ko pata hona chahiye:
- CPU usage
- Memory usage
- Disk usage
- Running processes
- System logs

--------------------------------

2) Process Monitoring Commands

- top
  Real-time process monitoring
  Shows CPU, memory usage and running processes

- htop
  Advanced version of top (if installed)

- ps aux
  Shows all running processes with user details

- ps -ef
  Alternative format to view processes

--------------------------------

3) CPU & Memory Monitoring

- uptime
  Shows system running time and load average

- free -h
  Shows memory usage in human readable format

- vmstat
  Shows memory, CPU and process info

--------------------------------

4) Disk Monitoring

- df -h
  Shows disk space usage

- du -sh *
  Shows size of files and directories

- lsblk
  Shows block devices (hard disks)

--------------------------------

5) Process Control

- kill PID
  Kill a process by PID

- kill -9 PID
  Force kill a process

- nice / renice
  Set process priority

--------------------------------

6) Log Files in Linux

Important log directory:
- /var/log/

Common logs:
- /var/log/syslog
- /var/log/auth.log
- /var/log/dmesg

Commands to view logs:
- cat
- less
- tail
- tail -f (live monitoring)

Example:
tail -f /var/log/syslog

--------------------------------

7) Why Monitoring is Important (Real Life)

- Server slow ho to cause pata chalta hai
- High CPU/memory issue detect hota hai
- Disk full hone se pehle alert milta hai
- Logs se error troubleshooting hoti hai

# DAY 13 – Linux + Git Workflow (DevOps Journey)

## 1. Linux + Git ka role DevOps me
DevOps me Linux server par code aur configuration files hoti hain.
Git ka use karke hum:
- Changes track karte hain
- Team ke saath kaam karte hain
- Production mistakes se bachte hain

Linux + Git = DevOps backbone

---

## 2. Git Repository ke andar kaam ka rule
Hamesha kaam karna chahiye:
- Repository ke root ke andar
- Ya uske subfolders me

Isse Git ko pata rehta hai:
kaun si file track ho rahi hai

---

## 3. Git Status (sabse important command)
git status se pata chalta hai:
- Untracked files
- Modified files
- Staged files

DevOps engineer har change ke baad git status check karta hai

---

## 4. Untracked vs Tracked Files
Untracked:
- Git janta hi nahi file exist karti hai

Tracked:
- Git file ko monitor kar raha hai

git add ke baad file tracked ho jaati hai

---

## 5. Git Add ka matlab
git add ka matlab:
"Is change ko commit ke liye ready karna"

Ye production me bhejne se pehla step hota hai

---

## 6. Git Commit ka role
Commit ek snapshot hota hai
Har commit ka:
- Message hota hai
- Time hota hai
- Author hota hai

Achha commit message = achhi DevOps practice

---

## 7. Git Push ka matlab
git push ka matlab:
Local changes → Remote repository (GitHub)

Push ke bina:
- Team changes nahi dekh paati
- CI/CD pipeline trigger nahi hoti

---

## 8. Real DevOps Scenario
Developer:
- Code change karta hai
DevOps Engineer:
- Linux server par changes check karta hai
- Git me commit + push karta hai
CI/CD:
- Automatically build & deploy hota hai

---

## 9. Common Mistakes (Interview + Real Life)
- bina git status dekhe commit kar dena
- vague commit messages
- direct production me kaam karna
- bina push kiye bol dena kaam ho gaya

---

## 10. Day 13 Summary
- Linux + Git workflow samjha
- git status ka importance
- add → commit → push flow
- Real DevOps use case clear

Day 13 completed successfully ✔️

