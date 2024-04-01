- fdisk -l
- fdisk /dev/sdb
- n
- p
- 1
- Enter
- +6G

- n
- p
- 2
- Enter
- Enter
- t
- 2
- 82
- w
  
 ![](https://drive.google.com/file/d/1nmttNaR_f-nlFU8smxsdWQiVb9NKP6SH/preview)

- mkfs.ext4 -L DATA /dev/sdb1
- mkswap -L SWAP /dev/sdb2

- ![](https://drive.google.com/file/d/1rk5d7pH7tFtRX9F8QlW0T13_RT1LX3vo/preview?usp=drive_link)

- swapon /dev/sdb2

- mkdir /mnt/DATA
- mount /dev/sdb1 /mnt/DATA

- ![](https://drive.google.com/file/d/1q_YtTa-cOg4OcYIZkSYY-ClnNLFikxJF/view?usp=drive_link)

- nano /etc/fstab
- ![](https://drive.google.com/file/d/1PoFoTml6pdexRGdXYAy_3niGI0Zo0JBt/view?usp=drive_link)

- mount -a
- reboot
- ![](https://drive.google.com/file/d/1ULyb8_gTYPko671wN5I9Yzk_36KkxSI_/view?usp=drive_link)

