
# DAY 9 – Archive & Search Commands (Linux)

Topics added:
- tar (archive & backup)
- gzip / gunzip
- zip / unzip
- find command
- grep basics

Purpose:
- File backup
- Log searching
- Production troubleshooting

Detailed notes will be expanded later.




# DAY 9 – Archive & Search Commands (Linux + DevOps)

## 1. Archive kya hota hai?
Archive ka matlab hota hai multiple files/folders ko
ek single file me pack karna (backup ke liye).

Production me:
- Backup banana
- Logs store karna
- Data transfer

---

## 2. tar Command (Most Important)

tar = Tape Archive

### Create archive
tar -cvf backup.tar folder_name

Options:
- c → create
- v → verbose
- f → file

---

### Extract archive
tar -xvf backup.tar

Options:
- x → extract
- v → verbose
- f → file

---

### Create compressed archive
tar -czvf backup.tar.gz folder_name

- z → gzip compression

---

### Extract compressed archive
tar -xzvf backup.tar.gz

---

## 3. gzip / gunzip

### Compress file
gzip file.txt

Output:
file.txt.gz

---

### Decompress file
gunzip file.txt.gz

Real-world:
Logs ko compress karke disk space bachate hain.

---

## 4. zip / unzip

### Create zip
zip archive.zip file1 file2

---

### Extract zip
unzip archive.zip

Mostly used in:
- Application packaging
- Windows/Linux compatibility

---

## 5. find Command (VERY IMPORTANT)

Used to search files/directories.

### Find by name
find /path -name filename

Example:
find /var/log -name "*.log"

---

### Find large files
find / -size +500M

---

### Find and delete
find /tmp -type f -mtime +7 -delete

Production cleanup ke liye use hota hai.

---

## 6. grep Command (Log Analysis KING)

grep = Global Regular Expression Print

### Search text in file
grep "error" file.log

---

### Case insensitive
grep -i "error" file.log

---

### Recursive search
grep -R "failed" /var/log

---

### Line number ke saath
grep -n "exception" file.log

---

## 7. DevOps Real Scenario

Problem:
Application down ho gayi.

Steps:
1. Logs search karo (grep)
2. Error find karo
3. Old logs archive karo (tar)
4. Compress logs (gzip)
5. Disk free rakho

Yahi DevOps ka daily kaam hai.

---

## 8. Interview Questions (Must Remember)

Q1. tar vs zip?
- tar → Linux native, backup
- zip → cross-platform

Q2. grep ka use?
- Logs search
- Error analysis

Q3. find vs locate?
- find → real-time
- locate → database based

Q4. Production me grep kyun important?
- Fast debugging
- Root cause analysis

---

## DAY 9 STATUS
✔ Archive concepts clear  
✔ Search commands mastered  
✔ Log analysis mindset built  
✔ DevOps production readiness increased
