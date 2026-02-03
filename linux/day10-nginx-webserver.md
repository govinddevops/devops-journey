# Day 10 – Nginx Web Server Setup (Ubuntu + WSL + systemd)

## Objective
Day 10 ka goal ek real production-style web server setup karna tha using Nginx,
jisme Linux services, systemd, networking aur troubleshooting ka practical
experience mile. Ye setup real DevOps interviews ke perspective se kiya gaya hai.

---

## Environment Details
- Host OS: Windows 10
- Linux: Ubuntu (WSL2)
- Init System: systemd
- Web Server: Nginx
- Repo: devops-journey (GitHub)

---

## What is Nginx?
Nginx ek high-performance web server hai jo:
- Static content serve karta hai
- Reverse proxy ke kaam aata hai
- Load balancer ban sakta hai
- Microservices aur DevOps environment me widely used hota hai

Production systems me Apache ke comparison me zyada efficient mana jata hai.

---

## Step 1: Update System & Install Nginx
Command:
sudo apt update
sudo apt install nginx -y

Explanation:
- apt update system ke package list ko refresh karta hai
- apt install nginx nginx web server install karta hai

---

## Step 2: systemctl Error Encountered
Error:
System has not been booted with systemd as init system

Reason:
WSL by default systemd ke saath boot nahi hota, isliye systemctl kaam nahi karta.

---

## Step 3: Enable systemd in WSL
Command:
sudo nano /etc/wsl.conf

Content added:
[boot]
systemd=true

Phir Windows PowerShell se:
wsl --shutdown

Ubuntu dubara start kiya.

---

## Step 4: Verify systemd
Command:
ps -p 1

Output:
systemd

Iska matlab Ubuntu ab proper systemd init ke saath run ho raha hai.

---

## Step 5: Manage Nginx Service
Commands:
sudo systemctl start nginx
sudo systemctl enable nginx
sudo systemctl status nginx

Explanation:
- start: service ko start karta hai
- enable: reboot ke baad auto-start
- status: service health check

---

## Step 6: Test via Command Line
Command:
curl http://localhost

Output:
Welcome to nginx!

Isse confirm hota hai ki server properly response de raha hai.

---

## Step 7: Browser Test
Browser me open kiya:
http://localhost

Initially 404 error aaya kyunki default index file missing ya rename ho chuki thi.

---

## Step 8: Understand Web Root
Command:
ls -l /var/www/html/

Default file:
index.nginx-debian.html

/var/www/html Nginx ka default document root hota hai.

---

## Step 9: Create Custom Web Page
Command:
sudo nano /var/www/html/index.html

Sample Content:
<h1>🚀 Day 10 - Nginx Successfully Configured</h1>
<p>Ubuntu | Linux | Nginx | DevOps</p>
<p>Project: Production-ready Web Server Setup</p>

Browser refresh karne par custom page visible ho gaya.

---

## Step 10: Networking Insight (WSL)
- Ubuntu ka internal IP 172.x.x.x hota hai
- Direct IP se browser access limited hota hai
- localhost ke through service accessible rahi

Interview Point:
WSL NAT based networking use karta hai.

---

## Troubleshooting Faced
1. systemctl command not working
2. systemd missing in WSL
3. Browser me 404 error
4. Web root confusion

Fixes:
- systemd manually enable kiya
- PID 1 verify kiya
- Correct document root use kiya
- curl aur browser dono se test kiya

---

## DevOps Perspective
Is day me following DevOps skills practice hui:
- Linux service management
- Web server deployment
- Infrastructure troubleshooting
- Documentation
- Git version control

---

## Interview Ready Statements
- I deployed and managed Nginx using systemd on Ubuntu (WSL).
- I resolved systemd and service-level issues in a Linux environment.
- I validated services using curl and browser-based testing.
- I documented the setup and maintained it in GitHub.

---

## Final Outcome
- Nginx successfully installed and running
- systemd enabled in WSL
- Custom HTML page served
- Setup documented and pushed to GitHub
- Production-style DevOps workflow achieved

