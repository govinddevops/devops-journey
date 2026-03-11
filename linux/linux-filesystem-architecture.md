#  Linux Filesystem Architecture & Advanced Navigation

## 1. Professional Filesystem Breakdown (FHS)
In a DevOps environment, understanding where configurations and logs reside is crucial for troubleshooting.

* **`/` (Root):** The parent of all directories.
* **`/home`:** Individual user directories (e.g., `/home/govind`).
* **`/etc`:** Critical system-wide configuration files (e.g., Nginx, SSH, Network configs).
* **`/var`:** Variable data, primarily used for system and application logs (`/var/log`).
* **`/bin` & `/sbin`:** Essential binaries for users and system administrators.
* **`/usr`:** User utilities and shared libraries.
* **`/tmp`:** Temporary storage (Note: Often cleared on reboot).
* **`/opt`:** Installation point for third-party/add-on software.

---

## 2. Navigation Mastery
Precision in navigation prevents accidental changes in production environments.

| Command | Description | DevOps Use Case |
| :--- | :--- | :--- |
| `pwd` | Print Working Directory | Verifying current path before running scripts. |
| `ls -la` | List all files with detailed info | Checking permissions and hidden files like `.env`. |
| `cd -` | Switch to the previous directory | Quickly toggling between two deep log paths. |
| `cd ~` | Navigate to home directory | Accessing user-specific tools or SSH keys. |
| `cd ..` | Move up one level | Manual traversal of configuration hierarchies. |

---

## 3. Efficient File & Directory Management
Handling application artifacts and configuration backups.

* **Directory Creation:** `mkdir -p project/src/bin` (Creates nested parent directories in one go).
* **Safe Removal:** `rm -rf <name>` (Recursively removes directories; use with extreme caution in prod).
* **Atomic Moves:** `mv source_file backup_file` (Used for renaming or moving files).
* **File Duplication:** `cp -rp source destination` (The `-p` flag preserves original file permissions).
* **File Creation:** `touch .gitkeep` (Often used to track empty directories in Git).

---

## 4. Understanding Hidden Files & Dotfiles
In Linux, files starting with a `.` (e.g., `.bashrc`, `.ssh`, `.docker/config.json`) are hidden.
* **DevOps Importance:** Most CI/CD and cloud CLI configurations are stored as hidden files in the home directory.
* **View Command:** Always use `ls -a` or `ls -la` to inspect these files.

---

## 5. Experience-Based Interview Points (DevOps Focus)
* **Everything is a File:** In Linux, directories, hardware devices, and sockets are all represented as files.
* **Absolute vs. Relative Paths:** Always use **Absolute Paths** in automation scripts (Bash/Ansible) to avoid "file not found" errors during execution.
* **Stateless vs. Statefull Paths:** Understanding that `/tmp` is ephemeral (temporary) while `/var/lib` is where persistent data (like Docker volumes) should live.
* **The Significance of `/etc`:** Most DevOps tasks involve modifying files under `/etc`. Always take a backup (`cp file.conf file.conf.bak`) before editing.

---
*Prepared by: Junior DevOps Engineer Documentation*
