#!/bin/bash

echo "==============================" >> system.log
echo "System Monitoring Log" >> system.log
date >> system.log
echo "------------------------------" >> system.log

echo "Disk Usage:" >> system.log
df -h >> system.log
echo "------------------------------" >> system.log

echo "Memory Usage:" >> system.log
free -h >> system.log
echo "------------------------------" >> system.log

echo "Uptime:" >> system.log
uptime >> system.log
echo "==============================" >> system.log

