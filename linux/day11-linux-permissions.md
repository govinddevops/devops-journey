# Day 11 – Linux File Permissions (DevOps Practical)

## Objective
Understand Linux file permissions using real practical examples.
This is critical for security and production systems in DevOps.

---

## Permission Basics

Permission format:
-rwxr-xr--

Owner | Group | Others

r = read (4)
w = write (2)
x = execute (1)

---

## Creating Test Files

touch file1.sh
touch file2.txt

Check permissions:
ls -l

---

## chmod – Change Permissions

chmod 755 file1.sh
Result:
rwxr-xr-x

chmod 644 file2.txt
Result:
rw-r--r--

---

## Script Execution

./file1.sh
If permission denied → execute bit missing

Fix:
chmod +x file1.sh

---

## Directory Permissions

mkdir secure_dir
chmod 644 secure_dir

cd secure_dir
Permission denied (because directory needs execute permission)

Fix:
chmod 755 secure_dir

---

## chown – Change Ownership

ls -l file1.sh

sudo chown govind file1.sh

Verify:
ls -l file1.sh

---

## Production Best Practices

Files:
- Config files → 600
- Logs → 640
- Scripts → 700 or 750

Directories:
- Application dirs → 755
- Secure dirs → 700

---

## Interview Points

- Never use chmod 777 in production
- Execute permission required to enter directories
- Ownership controls access more than permissions

---

## Summary

Day 11 focused on:
- chmod
- chown
- Permission bits
- Real-world DevOps security practices

