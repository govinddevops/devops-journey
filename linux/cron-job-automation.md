#  Linux Cron Jobs and Task Scheduling (DevOps Practical)

## Objective
Understand how to automate repetitive tasks in Linux using cron and scheduled jobs.
Critical for DevOps to automate scripts, backups, monitoring, and deployments.

---

## Cron Basics

- `cron` is a **daemon** that runs scheduled tasks (cron jobs) automatically.
- Cron jobs are defined in **crontab** files.
- Cron syntax:



command_to_run
│ │ │ │ │
│ │ │ │ └─ Day of week (0-7) Sunday=0 or 7
│ │ │ └── Month (1-12)
│ │ └── Day of month (1-31)
│ └── Hour (0-23)
└── Minute (0-59)


---

## Editing User Cron Jobs

```bash
crontab -e


First time → editor select (nano recommended)

Example cron job:

30 2 * * * /home/govind/backup.sh


Runs backup.sh every day at 2:30 AM

List Cron Jobs
crontab -l


Shows all cron jobs for the current user

Remove Cron Jobs
crontab -r


Deletes all cron jobs for current user

Use carefully in production

Cron Logs

Logs are stored in:

/var/log/syslog   # Ubuntu
/var/log/cron     # Some Linux


Check cron execution and errors

Practical Example – Backup Script

Create script:

nano backup.sh

#!/bin/bash
tar -czf /home/govind/devops-backup-$(date +%F).tar.gz /home/govind/devops-journey/


Make it executable:

chmod +x backup.sh


Add to cron (daily at 3 AM):

0 3 * * * /home/govind/backup.sh


Verify cron:

crontab -l



Summary

This focused on:

Understanding cron daemon and cron jobs

Editing, listing, and removing user cron jobs

Scheduling scripts with correct timing

Logging and troubleshooting cron jobs

Practical DevOps automation with backups

Thank you!!

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
