# Day 4 – Linux Users, Groups, Permissions & Process Management

---

## 1. What is a User in Linux?

A user is an identity under which:
- commands are executed
- files are created
- processes are run

### Types of Users
1. Normal User – daily work, limited permissions
2. Root User – superuser with full control (UID = 0)
3. System/Service Users – nginx, docker, jenkins, etc.

**Interview Point:**  
Every process in Linux runs under a specific user for security.

---

## 2. What is a Group?

A group is a collection of users used for permission management.

Instead of giving permissions to individual users, Linux uses groups.

### Real-world Example
A project directory owned by group `devops`:
- govind
- jenkins
- docker

All users get access via the group.

**Interview Point:**  
In production, permissions are managed using groups, not individual users.
Numeric permissions are widely used in automation and scripting.
Ownership decides control, permissions decide access.

---

## 3. User vs Group

| User | Group |
|-----|------|
| Individual identity | Collection of users |
| Runs processes | Manages permissions |
| Limited scope | Scalable access |

---

## 4. Linux File Permissions (rwx)

Command to check permissions:
```bash
ls -l

## 5. kill Command

Used to stop a running process.

kill PID


Force kill:

kill -9 PID


kill stops a process

It does NOT delete files

SIGTERM is preferred before SIGKILL.


##5 . Windows Git Bash Limitation

/etc/passwd and /etc/group are not available in Windows

These files exist only on real Linux servers or virtual machines