========================
DAY 14 – SHELL SCRIPTING BASICS
========================

Shell scripting ka matlab:
Linux commands ko ek file me likh ke automate karna.

Script file extension:
.sh

--------------------------------
1) First Shell Script
--------------------------------

#!/bin/bash
echo "Hello DevOps World"

--------------------------------
2) Variables
--------------------------------

name="Govind"
echo "My name is $name"

--------------------------------
3) User Input
--------------------------------

read -p "Enter your age: " age
echo "Your age is $age"

--------------------------------
4) If-Else Condition
--------------------------------

if [ $age -ge 18 ]
then
  echo "You are eligible"
else
  echo "You are not eligible"
fi

--------------------------------
5) For Loop
--------------------------------

for i in 1 2 3 4 5
do
  echo "Number is $i"
done

--------------------------------
6) While Loop
--------------------------------

count=1
while [ $count -le 5 ]
do
  echo "Count is $count"
  count=$((count+1))
done

--------------------------------
7) Real Life Use
--------------------------------

- Automation
- Backup scripts
- Monitoring scripts
- Cron jobs
- CI/CD pipelines

--------------------------------
DAY 14 COMPLETED ✅

