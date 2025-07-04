# Linux File Permissions & Security Management (DevOps Edition)

## 1. Understanding the Permission Model (UGO)
In a production environment, improper permissions are the #1 cause of "Permission Denied" errors in CI/CD pipelines.

The permission string `-rwxr-xr--` is broken into four parts:
1. **Type:** `-` (file), `d` (directory), `l` (link).
2. **Owner (u):** Permissions for the file creator.
3. **Group (g):** Permissions for the assigned group.
4. **Others (o):** Permissions for everyone else (Highly sensitive in Security).

### **The Binary/Octal Representation**
| Value | Permission | Action |
| :--- | :--- | :--- |
| **4** | `r` (Read) | View file content or list directory. |
| **2** | `w` (Write) | Modify file or create/delete in directory. |
| **1** | `x` (Execute) | Run a script/binary or enter a directory. |

---

## 2. Practical Command Execution (`chmod`)
Changing permissions using both Octal and Symbolic modes.

### **Numerical (Octal) Mode** - Best for Batch Automation
* **Standard Script:** `chmod 755 deploy.sh` (Owner: All, Group/Others: Read/Execute)
* **Config/Secret File:** `chmod 600 .env` (Strictly Owner Only - Read/Write)
* **Web Assets:** `chmod 644 index.html` (Owner: R/W, Others: Read Only)

### **Symbolic Mode** - Best for Quick Tweaks
* **Add Execute Bit:** `chmod +x script.sh`
* **Remove Write from Group:** `chmod g-w config.yaml`
* **Sync Permissions:** `chmod u=rwx,g=rx,o=r file.txt`

---

## 3. Directory Permissions (Crucial Distinction)
Directories require the **Execute (x)** bit to allow users to "enter" (`cd`) into them.
* **Standard Secure Directory:** `chmod 755 secure_dir`
* **Restricted Directory:** `chmod 700 private_keys/` (Only the owner can see the keys).
* **Common Mistake:** Setting `644` on a directory will let you see the files (`ls`), but you won't be able to access them (`cd`).

---

## 4. Production Troubleshooting & Ownership (`chown`)
Permissions often fail because the **Ownership** is wrong (e.g., a file owned by `root` but needed by `jenkins`).

* **Change Owner:** `sudo chown jenkins app.log`
* **Change Owner & Group:** `sudo chown www-data:www-data /var/www/html`
* **Recursive Ownership:** `sudo chown -R govind:devops ./project`

---

## 5. Experience-Based Best Practices (Senior Level)
* **Principle of Least Privilege (PoLP):** Never use `chmod 777` in production. It is a major security risk. If 777 is the "fix," your ownership (`chown`) is likely the real problem.
* **The "Execution" Trap:** If a shell script doesn't run via `./script.sh`, check the shebang (`#!/bin/bash`) and ensure the `+x` bit is set.
* **Umask Awareness:** Understand that new files get default permissions based on the system `umask`.
* **Sticky Bit & SUID:** (Advanced) Used for shared directories like `/tmp` to prevent users from deleting each other's files.

---
*Maintained by: Junior DevOps Engineer | Infrastructure Security*
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
