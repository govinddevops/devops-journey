DAY 6 – SERVICES, SYSTEMCTL & TROUBLESHOOTING (DEVOPS READY)
1. What is a Service in Linux?

Service ek background process hota hai jo system start hone ke baad continuously run karta hai.

Examples:

ssh → remote login

nginx → web server

cron → scheduler

docker → container engine

User login kare ya na kare, service chalti rehti hai.

2. What is systemd?

systemd Linux ka init system + service manager hai.

Kaam:

Boot process control

Services manage karna

Crash hone par restart

Logs maintain karna

Modern Linux systems systemd use karte hain.

3. systemctl Commands (Very Important)

Service status:

systemctl status ssh


Service start:

systemctl start ssh


Service stop:

systemctl stop ssh


Service restart:

systemctl restart ssh


Boot pe auto start:

systemctl enable ssh


Boot se disable:

systemctl disable ssh

4. systemctl Git Bash me kyun kaam nahi karta?

Git Bash Windows environment hai, real Linux kernel nahi.

Isliye error aata hai:

systemctl: command not found


systemctl sirf:

Linux

VM

Cloud server
pe kaam karta hai.

5. Linux Boot Process (Interview Question)

Flow:
BIOS/UEFI → GRUB → Kernel → systemd → Services → Login

Interview me ye flow bolna bahut strong answer hota hai.

6. Targets (Runlevels)

Old Linux:

Runlevel 3 → CLI

Runlevel 5 → GUI

New systemd:

multi-user.target

graphical.target

Check default:

systemctl get-default

7. journalctl – Logs Analysis

All errors:

journalctl -xe


Service logs:

journalctl -u nginx


Today logs:

journalctl --since today


Logs troubleshooting ka sabse important tool hai.

8. Real Production Issue Example

Web server down hai:

Steps:

systemctl status nginx

journalctl -u nginx

df -h

nginx -t

systemctl restart nginx

Ye approach interviewer ko impress karta hai.

9. Service Failure Reasons

Disk full

Permission issue

Wrong config

Port conflict

Dependency down

10. Crash Recovery Strategy

Check status

Check logs

Check disk/memory

Validate config

Restart service

11. DevOps Connection

CI/CD, Docker, Jenkins, Nginx sab services ke through run hote hain.
systemctl strong = DevOps strong.

DAY 6 SUMMARY

systemd manages services

systemctl controls them

journalctl helps debugging

Troubleshooting mindset is key
