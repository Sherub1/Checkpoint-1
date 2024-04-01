```
fdisk -l
fdisk /dev/sdb
n
p
1
Enter
+6G

n
p
2
Enter
Enter
t
2
82
w

![alt text](image.png)

mkfs.ext4 -L DATA /dev/sdb1
mkswap -L SWAP /dev/sdb2

![alt text](image-1.png)

swapon /dev/sdb2

mkdir /mnt/DATA
mount /dev/sdb1 /mnt/DATA

![alt text](image-2.png)

nano /etc/fstab
![alt text](image-3.png)

mount -a
reboot
![alt text](<Capture d'écran 2024-03-29 111940.png>)
```
