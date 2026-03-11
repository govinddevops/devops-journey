#!/bin/bash
tar -czf logs/backup_$(date +%F_%H-%M).tar.gz data/
echo "Backup created at $(date)" >> logs/backup.log

