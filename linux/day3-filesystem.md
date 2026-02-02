# Day 3 – Linux Filesystem & Navigation

## 1. Linux Filesystem Structure
/       -> Root directory
/home   -> User home directories
/etc    -> Configuration files
/var    -> Logs and variable data
/bin    -> Essential user commands
/usr    -> User programs and utilities
/tmp    -> Temporary files

## 2. Important Commands

pwd     -> Show current directory
ls      -> List files and directories
ls -l   -> Detailed list
ls -a   -> Show hidden files
cd      -> Change directory
cd ..   -> Move one directory back
cd ~    -> Go to home directory

## 3. File & Directory Management

mkdir dir_name        -> Create directory
rmdir dir_name        -> Remove empty directory
rm -r dir_name        -> Remove directory with files
touch file.txt        -> Create empty file
cp file1 file2        -> Copy file
mv old new            -> Rename or move file
rm file.txt           -> Delete file

## 4. Hidden Files
Files starting with '.' are hidden in Linux.
Use 'ls -a' to view them.

## 5. Interview Points
- Linux follows a single-rooted filesystem.
- Everything in Linux is treated as a file.
- Proper navigation is key for server management.
# Day 3 – Linux Filesystem & Navigation

## 1. Linux Filesystem Structure
/       -> Root directory
/home   -> User home directories
/etc    -> Configuration files
/var    -> Logs and variable data
/bin    -> Essential user commands
/usr    -> User programs and utilities
/tmp    -> Temporary files

## 2. Important Commands

pwd     -> Show current directory
ls      -> List files and directories
ls -l   -> Detailed list
ls -a   -> Show hidden files
cd      -> Change directory
cd ..   -> Move one directory back
cd ~    -> Go to home directory

## 3. File & Directory Management

mkdir dir_name        -> Create directory
rmdir dir_name        -> Remove empty directory
rm -r dir_name        -> Remove directory with files
touch file.txt        -> Create empty file
cp file1 file2        -> Copy file
mv old new            -> Rename or move file
rm file.txt           -> Delete file

## 4. Hidden Files
Files starting with '.' are hidden in Linux.
Use 'ls -a' to view them.

## 5. Interview Points
- Linux follows a single-rooted filesystem.
- Everything in Linux is treated as a file.
- Proper navigation is key for server management.
x






day3(part-2) Day 3 - Linux Permissions & Ownership

ls -l
chmod 755 file
chmod 644 file

chown user:group file

Understanding:
r = read
w = write
x = execute

Production Note:
Permissions are used to control access in multi-user systems.
# Day 3 – Linux Users & Permissions (DevOps Core)

## 1. Linux Permission Basics
Linux me har file/folder ke liye 3 levels hote hain:
- Owner
- Group
- Others

Permissions:
- r → read
- w → write
- x → execute

Command:
ls -l

Example output:
-rw-r--r--

Meaning:
Owner → read, write  
Group → read  
Others → read  

---

## 2. chmod (Change Permissions)

chmod file ya folder ki permissions change karta hai.

Numeric system:
r = 4
w = 2
x = 1

Examples:
chmod 755 script.sh
chmod 644 config.txt
chmod 600 secret.env

Real DevOps usage:
- Deployment scripts → 755
- Config files → 644
- Secret files → 600

---

## 3. chown (Change Owner & Group)

chown se file ka owner ya group change hota hai.

Syntax:
chown user:group file

Production example:
sudo chown jenkins:jenkins deploy.sh

Use case:
CI/CD pipelines, Docker volumes, permission issues fix karna.

---

## 4. Groups in Linux

Groups ka use multiple users ko same access dene ke liye hota hai.

Commands (Linux server par):
groupadd devops
usermod -aG devops user

Production example:
DevOps team ko same folder access dena using groups.

---

## 5. Important Note (Windows Users)
Windows + Git Bash me:
- chmod, chown, groupadd commands fully enforce nahi hote
- Ye commands real Linux servers (Ubuntu, EC2, Docker) par properly kaam karte hain

---

## 6. Interview Point
Linux permissions and ownership are critical for secure deployments, CI/CD pipelines, and production systems.
git status
