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
