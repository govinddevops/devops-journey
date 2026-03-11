# Linux Administrative Management: Users, Groups, & Processes

## 1. Identity & Access Management (IAM) in Linux
In a DevOps workflow, managing service accounts and user permissions is critical for security and automation.

### **User Management**
* **Add a User:** `sudo adduser govind` (Creates home directory and sets password).
* **Switch User:** `su - username` (Switches to another user environment).
* **Current Identity:** `whoami` and `id` (Shows UID, GID, and Group memberships).

### **Group Management**
Groups are used to manage permissions for teams (e.g., `devops`, `web-admins`).
* **Create Group:** `sudo groupadd devops`
* **Add User to Group:** `sudo usermod -aG docker govind` (Essential for running Docker without sudo).
* **Verify Groups:** `groups govind`

### **The Sudoers File (`/etc/sudoers`)**
* **Best Practice:** Never edit `/etc/sudoers` directly. Always use `sudo visudo` to prevent syntax errors that could lock you out of the system.

---

## 2. Process Management & Monitoring
Troubleshooting high CPU/RAM usage and managing background services.

### **Real-time Monitoring**
* **System Overview:** `top` or `htop` (Interactive process viewer).
* **Snapshots:** `ps aux` (Displays all running processes for all users).
* **Filter Process:** `ps aux | grep "nginx"` (Find specific process ID).

### **Terminating Processes**
* **Graceful Termination:** `kill <PID>` (Sends SIGTERM).
* **Force Kill:** `kill -9 <PID>` (Sends SIGKILL - Use only if the process is unresponsive).
* **Kill by Name:** `pkill nginx`

---

## 3. Service Management (`systemctl`)
Managing system daemons and application services in modern Linux distros.

* **Check Status:** `systemctl status docker`
* **Restart Service:** `sudo systemctl restart nginx`
* **Enable on Boot:** `sudo systemctl enable jenkins` (Ensures service starts automatically after a reboot).

---

## 4. Background & Foreground Jobs
* **Run in Background:** `command &`
* **Check Jobs:** `jobs`
* **Bring to Foreground:** `fg %1`
* **Resume in Background:** `bg %1` (Useful if you accidentally started a long-running process).

---

## 5. Junior DevOps Experience Insights
* **The `-aG` Rule:** When adding a user to a group, always use the `-a` (append) flag. Forgetting it will remove the user from all other groups, which can break system access.
* **Process Priority (Nice/Renice):** Understand that you can adjust process priority to
