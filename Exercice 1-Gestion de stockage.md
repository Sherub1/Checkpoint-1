- fdisk -l
- fdisk /dev/sdb
- n
- p
- 1
- Enter
- +6G
  
<br>

- n
- p
- 2
- Enter
- Enter
- t
- 2
- 82
- w

![Capture d'écran 2024-03-31 174414](https://github.com/Sherub1/Checkpoint-1/assets/160050170/94a14aec-7e4b-4cbb-89d6-ccacf1888a93)


- mkfs.ext4 -L DATA /dev/sdb1
- mkswap -L SWAP /dev/sdb2

![Capture d'écran 2024-03-31 174954](https://github.com/Sherub1/Checkpoint-1/assets/160050170/b35b9ed6-af30-44e7-ab65-f17dff18d204)


- swapon /dev/sdb2

- mkdir /mnt/DATA
- mount /dev/sdb1 /mnt/DATA

![Capture d'écran 2024-03-31 175734](https://github.com/Sherub1/Checkpoint-1/assets/160050170/d92d1813-aa57-4622-81d6-464116c82163)


- nano /etc/fstab

![Capture d'écran 2024-03-31 180801](https://github.com/Sherub1/Checkpoint-1/assets/160050170/4f9c481d-dc1a-4ed1-a6b7-18182c88fbf3)

- mount -a
- reboot


![Capture d'écran 2024-03-31 174414](https://github.com/Sherub1/Checkpoint-1/assets/160050170/33d94ec3-b33d-456a-8c56-dac1c91a1de1)

