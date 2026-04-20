# Домашнє завдання №2. Файлова система і права доступу

## Завдання 1

1. 
```
user@debian:~$ cd /
user@debian:/$ ls -la
total 80
drwxr-xr-x  19 root root  4096 бер 20  2024 .
drwxr-xr-x  19 root root  4096 бер 20  2024 ..
lrwxrwxrwx   1 root root     7 бер 20  2024 bin -> usr/bin
drwxr-xr-x   3 root root  4096 бер 20  2024 boot
drwx------   3 root root  4096 бер 20  2024 .cache
drwxr-xr-x  18 root root  3160 кві 20 23:32 dev
drwxr-xr-x 120 root root 12288 кві 20 23:32 etc
drwxr-xr-x   3 root root  4096 бер 20  2024 home
lrwxrwxrwx   1 root root    31 бер 20  2024 initrd.img -> boot/initrd.img-5.10.0-28-amd64
lrwxrwxrwx   1 root root    31 бер 20  2024 initrd.img.old -> boot/initrd.img-5.10.0-22-amd64
lrwxrwxrwx   1 root root     7 бер 20  2024 lib -> usr/lib
lrwxrwxrwx   1 root root     9 бер 20  2024 lib32 -> usr/lib32
lrwxrwxrwx   1 root root     9 бер 20  2024 lib64 -> usr/lib64
lrwxrwxrwx   1 root root    10 бер 20  2024 libx32 -> usr/libx32
drwx------   2 root root 16384 бер 20  2024 lost+found
drwxr-xr-x   3 root root  4096 бер 20  2024 media
drwxr-xr-x   2 root root  4096 бер 20  2024 mnt
drwxr-xr-x   2 root root  4096 бер 20  2024 opt
dr-xr-xr-x 237 root root     0 кві 20 23:32 proc
drwx------  13 root root  4096 бер 28 14:45 root
drwxr-xr-x  25 root root   620 кві 20 23:32 run
lrwxrwxrwx   1 root root     8 бер 20  2024 sbin -> usr/sbin
drwxr-xr-x   2 root root  4096 бер 20  2024 srv
dr-xr-xr-x  13 root root     0 кві 20 23:32 sys
drwxrwxrwt  16 root root  4096 кві 20 23:35 tmp
drwxr-xr-x  14 root root  4096 бер 20  2024 usr
drwxr-xr-x  11 root root  4096 бер 20  2024 var
lrwxrwxrwx   1 root root    28 бер 20  2024 vmlinuz -> boot/vmlinuz-5.10.0-28-amd64
lrwxrwxrwx   1 root root    28 бер 20  2024 vmlinuz.old -> boot/vmlinuz-5.10.0-22-amd64
```

2. 
```
user@debian:/$ cd ./etc
user@debian:/etc$ ls -la
total 1076
drwxr-xr-x 120 root root   12288 кві 20 23:32 .
drwxr-xr-x  19 root root    4096 бер 20  2024 ..
-rw-r--r--   1 root root    2981 бер 20  2024 adduser.conf
-rw-r--r--   1 root root      44 бер 20  2024 adjtime
drwxr-xr-x   3 root root    4096 бер 20  2024 alsa
drwxr-xr-x   2 root root    4096 бер 20  2024 alternatives
-rw-r--r--   1 root root     401 лют  6  2021 anacrontab
drwxr-xr-x   4 root root    4096 бер 20  2024 apache2
-rw-r--r--   1 root root     433 сер 23  2020 apg.conf
drwxr-xr-x   2 root root    4096 бер 20  2024 apparmor
drwxr-xr-x   7 root root    4096 бер 20  2024 apparmor.d
-rw-r--r--   1 root root     769 чер 22  2021 appstream.conf
drwxr-xr-x   8 root root    4096 бер 20  2024 apt
drwxr-xr-x   3 root root    4096 бер 20  2024 avahi
-rw-r--r--   1 root root    1994 бер 27  2022 bash.bashrc
-rw-r--r--   1 root root      45 січ 25  2020 bash_completion
drwxr-xr-x   2 root root    4096 бер 28 14:49 bash_completion.d
-rw-r--r--   1 root root     367 вер 22  2022 bindresvport.blacklist
drwxr-xr-x   2 root root    4096 гру 22  2022 binfmt.d
drwxr-xr-x   2 root root    4096 бер 20  2024 bluetooth
-rw-r--r--   1 root root    7374 лют 10  2021 bogofilter.cf
drwxr-xr-x   3 root root    4096 бер 20  2024 ca-certificates
-rw-r--r--   1 root root    5662 бер 20  2024 ca-certificates.conf
drwxr-s---   2 root dip     4096 бер 20  2024 chatscripts
drwxr-xr-x   3 root root    4096 бер 20  2024 chromium
drwxr-xr-x   2 root root    4096 бер 28 14:44 console-setup
drwxr-xr-x   2 root root    4096 бер 20  2024 cracklib
drwxr-xr-x   2 root root    4096 бер 20  2024 cron.d
drwxr-xr-x   2 root root    4096 бер 20  2024 cron.daily
drwxr-xr-x   2 root root    4096 бер 20  2024 cron.hourly
drwxr-xr-x   2 root root    4096 бер 20  2024 cron.monthly
-rw-r--r--   1 root root    1042 лют 23  2021 crontab
drwxr-xr-x   2 root root    4096 бер 20  2024 cron.weekly
drwxr-xr-x   5 root lp      4096 кві 20 23:32 cups
drwxr-xr-x   2 root root    4096 бер 20  2024 cupshelpers
drwxr-xr-x   4 root root    4096 бер 20  2024 dbus-1
drwxr-xr-x   4 root root    4096 бер 20  2024 dconf
-rw-r--r--   1 root root    2969 чер 10  2021 debconf.conf
-rw-r--r--   1 root root       5 січ 28  2024 debian_version
drwxr-xr-x   3 root root    4096 бер 28 14:44 default
-rw-r--r--   1 root root     604 чер 26  2016 deluser.conf
drwxr-xr-x   4 root root    4096 бер 20  2024 dhcp
drwxr-xr-x   2 root root    4096 бер 20  2024 dictionaries-common
drwxr-xr-x   2 root root    4096 бер 20  2024 discover.conf.d
-rw-r--r--   1 root root     346 січ 14  2018 discover-modprobe.conf
-rw-r--r--   1 root root    1174 лют  4  2021 dleyna-server-service.conf
drwxr-xr-x   4 root root    4096 бер 20  2024 dpkg
-rw-r--r--   1 root root     685 чер  7  2021 e2scrub.conf
drwxr-xr-x   3 root root    4096 бер 20  2024 emacs
-rw-r--r--   1 root root       0 бер 20  2024 environment
drwxr-xr-x   2 root root    4096 бер 20  2024 environment.d
-rw-r--r--   1 root root    1816 гру 27  2019 ethertypes
drwxr-xr-x   2 root root    4096 бер 20  2024 firefox-esr
drwxr-xr-x   4 root root    4096 бер 20  2024 fonts
-rw-r--r--   1 root root     806 бер 20  2024 fstab
-rw-r--r--   1 root root     694 чер 20  2021 fuse.conf
drwxr-xr-x   3 root root    4096 бер 20  2024 fwupd
-rw-r--r--   1 root root    2584 лют  1  2020 gai.conf
drwxr-xr-x   6 root root    4096 бер 20  2024 gdm3
drwxr-xr-x   2 root root    4096 бер 20  2024 geoclue
drwxr-xr-x   4 root root    4096 бер 20  2024 ghostscript
drwxr-xr-x   3 root root    4096 бер 20  2024 glvnd
drwxr-xr-x   2 root root    4096 бер 20  2024 gnome
drwxr-xr-x   2 root root    4096 бер 20  2024 gnome-chess
drwxr-xr-x   2 root root    4096 бер 20  2024 groff
-rw-r--r--   1 root root     921 бер 28 14:36 group
-rw-r--r--   1 root root     917 бер 20  2024 group-
drwxr-xr-x   2 root root    4096 бер 20  2024 grub.d
-rw-r-----   1 root shadow   771 бер 28 14:36 gshadow
-rw-r-----   1 root shadow   767 бер 20  2024 gshadow-
drwxr-xr-x   3 root root    4096 бер 20  2024 gss
drwxr-xr-x   2 root root    4096 бер 20  2024 gtk-2.0
drwxr-xr-x   2 root root    4096 бер 20  2024 gtk-3.0
-rw-r--r--   1 root root       9 сер  7  2006 host.conf
-rw-r--r--   1 root root       7 бер 20  2024 hostname
-rw-r--r--   1 root root     186 бер 20  2024 hosts
-rw-r--r--   1 root root     411 бер 20  2024 hosts.allow
-rw-r--r--   1 root root     711 бер 20  2024 hosts.deny
drwxr-xr-x   3 root root    4096 бер 20  2024 ifplugd
drwxr-xr-x   2 root root    4096 бер 20  2024 init.d
drwxr-xr-x   5 root root    4096 бер 20  2024 initramfs-tools
-rw-r--r--   1 root root    1748 гру  8  2020 inputrc
drwxr-xr-x   2 root root    4096 бер 20  2024 insserv.conf.d
drwxr-xr-x   2 root root    4096 бер 20  2024 ipp-usb
drwxr-xr-x   4 root root    4096 бер 20  2024 iproute2
-rw-r--r--   1 root root      27 кві  2  2023 issue
-rw-r--r--   1 root root      20 кві  2  2023 issue.net
drwxr-xr-x   5 root root    4096 бер 20  2024 kernel
-rw-r--r--   1 root root     144 бер 20  2024 kernel-img.conf
drwxr-xr-x   2 root root    4096 бер 20  2024 ldap
-rw-r--r--   1 root root   80694 бер 20  2024 ld.so.cache
-rw-r--r--   1 root root      34 вер 22  2022 ld.so.conf
drwxr-xr-x   2 root root    4096 бер 20  2024 ld.so.conf.d
-rw-r--r--   1 root root      26 гру 20  2020 libao.conf
-rw-r--r--   1 root root     191 січ  6  2021 libaudit.conf
drwxr-xr-x   3 root root    4096 бер 20  2024 libblockdev
drwxr-xr-x   2 root root    4096 бер 20  2024 libnl-3
drwxr-xr-x   2 root root    4096 сер 18  2019 libpaper.d
drwxr-xr-x   3 root root    4096 бер 20  2024 libreoffice
drwxr-xr-x   4 root root    4096 бер 20  2024 lighttpd
-rw-r--r--   1 root root    2996 кві 20  2023 locale.alias
-rw-r--r--   1 root root    9389 бер 28 14:39 locale.gen
lrwxrwxrwx   1 root root      31 бер 20  2024 localtime -> /usr/share/zoneinfo/Europe/Kyiv
drwxr-xr-x   4 root root    4096 бер 20  2024 logcheck
-rw-r--r--   1 root root   10477 лют  7  2020 login.defs
-rw-r--r--   1 root root     494 січ 30  2022 logrotate.conf
drwxr-xr-x   2 root root    4096 бер 20  2024 logrotate.d
-r--r--r--   1 root root      33 бер 20  2024 machine-id
-rw-r--r--   1 root root     111 сер 30  2023 magic
-rw-r--r--   1 root root     111 сер 30  2023 magic.mime
-rw-r--r--   1 root root   36947 бер 28 15:38 mailcap
-rw-r--r--   1 root root     449 лют 25  2021 mailcap.order
-rw-r--r--   1 root root    5215 лют 19  2021 manpath.config
-rw-r--r--   1 root root   70481 січ 16  2021 mime.types
-rw-r--r--   1 root root     812 чер  7  2021 mke2fs.conf
drwxr-xr-x   2 root root    4096 бер 20  2024 modprobe.d
-rw-r--r--   1 root root     195 бер 20  2024 modules
drwxr-xr-x   2 root root    4096 бер 20  2024 modules-load.d
-rw-r--r--   1 root root     286 кві  2  2023 motd
lrwxrwxrwx   1 root root      19 бер 20  2024 mtab -> ../proc/self/mounts
-rw-r--r--   1 root root   10056 гру  2  2022 nanorc
-rw-r--r--   1 root root     767 сер  1  2022 netconfig
drwxr-xr-x   7 root root    4096 бер 20  2024 network
drwxr-xr-x   7 root root    4096 бер 20  2024 NetworkManager
-rw-r--r--   1 root root      60 бер 20  2024 networks
-rwxr-xr-x   1 root root     228 вер  4  2022 nftables.conf
-rw-r--r--   1 root root     553 бер 20  2024 nsswitch.conf
drwxr-xr-x   2 root root    4096 бер 20  2024 openal
drwxr-xr-x   2 root root    4096 бер 20  2024 openni2
drwxr-xr-x   3 root root    4096 бер 20  2024 opt
lrwxrwxrwx   1 root root      21 січ 28  2024 os-release -> ../usr/lib/os-release
drwxr-xr-x   2 root root    4096 бер 20  2024 PackageKit
-rw-r--r--   1 root root     552 січ 31  2021 pam.conf
drwxr-xr-x   2 root root    4096 бер 20  2024 pam.d
-rw-r--r--   1 root root       3 бер 20  2024 papersize
-rw-r--r--   1 root root    2066 бер 20  2024 passwd
-rw-r--r--   1 root root    1999 бер 20  2024 passwd-
drwxr-xr-x   3 root root    4096 бер 20  2024 perl
drwxr-xr-x   3 root root    4096 бер 20  2024 pipewire
drwxr-xr-x   4 root root    4096 бер 20  2024 pki
drwxr-xr-x   2 root root    4096 бер 20  2024 plymouth
drwxr-xr-x   3 root root    4096 бер 20  2024 pm
drwxr-xr-x   4 root root    4096 бер 20  2024 polkit-1
drwxr-xr-x   8 root dip     4096 бер 20  2024 ppp
-rw-r--r--   1 root root     769 кві 10  2021 profile
drwxr-xr-x   2 root root    4096 бер 20  2024 profile.d
-rw-r--r--   1 root root    2932 кві  2  2013 protocols
drwxr-xr-x   3 root root    4096 бер 20  2024 pulse
-rw-------   1 root root       0 бер 20  2024 .pwd.lock
drwxr-xr-x   2 root root    4096 бер 20  2024 python3
drwxr-xr-x   2 root root    4096 бер 20  2024 python3.9
drwxr-xr-x   2 root root    4096 бер 20  2024 rc0.d
drwxr-xr-x   2 root root    4096 бер 20  2024 rc1.d
drwxr-xr-x   2 root root    4096 бер 20  2024 rc2.d
drwxr-xr-x   2 root root    4096 бер 20  2024 rc3.d
drwxr-xr-x   2 root root    4096 бер 20  2024 rc4.d
drwxr-xr-x   2 root root    4096 бер 20  2024 rc5.d
drwxr-xr-x   2 root root    4096 бер 20  2024 rc6.d
drwxr-xr-x   2 root root    4096 бер 20  2024 rcS.d
-rw-r--r--   1 root root    3281 вер  6  2021 reportbug.conf
-rw-r--r--   1 root root      72 кві 20 23:32 resolv.conf
lrwxrwxrwx   1 root root      13 січ 20  2024 rmt -> /usr/sbin/rmt
-rw-r--r--   1 root root     887 кві  1  2013 rpc
-rw-r--r--   1 root root    1974 тра 21  2022 rsyslog.conf
drwxr-xr-x   2 root root    4096 тра 21  2022 rsyslog.d
-rw-r--r--   1 root root    5428 вер 14  2020 rygel.conf
drwxr-xr-x   3 root root    4096 бер 20  2024 sane.d
drwxr-xr-x   4 root root    4096 бер 20  2024 security
drwxr-xr-x   2 root root    4096 бер 20  2024 selinux
-rw-r--r--   1 root root   10593 січ 30  2021 sensors3.conf
drwxr-xr-x   2 root root    4096 бер 20  2024 sensors.d
-rw-r--r--   1 root root   12813 бер 28  2021 services
drwxr-xr-x   3 root root    4096 бер 20  2024 sgml
-rw-r-----   1 root shadow  1165 бер 20  2024 shadow
-rw-r-----   1 root shadow  1133 бер 20  2024 shadow-
-rw-r--r--   1 root root     116 бер 20  2024 shells
drwxr-xr-x   2 root root    4096 бер 20  2024 skel
drwxr-xr-x   2 root root    4096 бер 20  2024 snmp
drwxr-xr-x   4 root root    4096 бер 20  2024 speech-dispatcher
drwxr-xr-x   3 root root    4096 бер 20  2024 ssh
drwxr-xr-x   4 root root    4096 бер 20  2024 ssl
-rw-r--r--   1 root root      18 бер 20  2024 subgid
-rw-r--r--   1 root root       0 бер 20  2024 subgid-
-rw-r--r--   1 root root      18 бер 20  2024 subuid
-rw-r--r--   1 root root       0 бер 20  2024 subuid-
-rw-r--r--   1 root root    3975 січ 14  2023 sudo.conf
-r--r-----   1 root root     669 січ 14  2023 sudoers
drwxr-xr-x   2 root root    4096 бер 20  2024 sudoers.d
-rw-r--r--   1 root root    6169 січ 14  2023 sudo_logsrvd.conf
-rw-r--r--   1 root root    2355 кві  6  2021 sysctl.conf
drwxr-xr-x   2 root root    4096 бер 20  2024 sysctl.d
drwxr-xr-x   5 root root    4096 бер 20  2024 systemd
drwxr-xr-x   2 root root    4096 бер 20  2024 terminfo
-rw-r--r--   1 root root      12 бер 20  2024 timezone
drwxr-xr-x   2 root root    4096 бер 20  2024 timidity
drwxr-xr-x   2 root root    4096 гру 22  2022 tmpfiles.d
-rw-r--r--   1 root root    1260 чер 16  2020 ucf.conf
drwxr-xr-x   4 root root    4096 бер 20  2024 udev
drwxr-xr-x   2 root root    4096 бер 20  2024 udisks2
drwxr-xr-x   3 root root    4096 бер 20  2024 ufw
drwxr-xr-x   2 root root    4096 бер 20  2024 update-motd.d
drwxr-xr-x   2 root root    4096 бер 20  2024 UPower
-rw-r--r--   1 root root    1523 лип 11  2020 usb_modeswitch.conf
drwxr-xr-x   2 root root    4096 лют 24  2020 usb_modeswitch.d
-rw-r--r--   1 root root      51 кві  9  2020 vdpau_wrapper.cfg
drwxr-xr-x   2 root root    4096 бер 20  2024 vim
drwxr-xr-x   5 root root    4096 бер 20  2024 vulkan
-rw-r--r--   1 root root    4942 лис 23  2021 wgetrc
drwxr-xr-x   2 root root    4096 бер 20  2024 wpa_supplicant
drwxr-xr-x  11 root root    4096 бер 20  2024 X11
-rw-r--r--   1 root root     642 гру 24  2020 xattr.conf
drwxr-xr-x   6 root root    4096 бер 20  2024 xdg
drwxr-xr-x   2 root root    4096 бер 20  2024 xml
```

3. 
```
user@debian:/etc$ cd ../home
user@debian:/home$ ls
user
```

## Завдання 2
```
user@debian:~$ mkdir hw2
user@debian:~$ cd hw2
user@debian:~/hw2$ touch file.txt
user@debian:~/hw2$ cp file.txt new-file.txt
user@debian:~/hw2$ mv new-file.txt renamed-new-file.txt
user@debian:~/hw2$ ln file.txt hard-link-to-file.txt
user@debian:~/hw2$ ln -s file.txt soft-link-to-file.txt
user@debian:~/hw2$ find ~ -name file.txt
/home/user/hw2/file.txt
```

## Завдання 3
```
user@debian:~/hw2$ ls -l file.txt
-rw-r--r-- 2 user user 0 кві 20 23:50 file.txt
user@debian:~/hw2$ chmod 444 file.txt
user@debian:~/hw2$ chmod u+w file.txt
user@debian:~/hw2$ umask
0022
user@debian:~/hw2$ umask 022
```

## Завдання 4
```
user@debian:~/hw2$ sudo adduser learner
[sudo] password for user: 
Adding user `learner' ...
Adding new group `learner' (1001) ...
Adding new user `learner' (1001) with group `learner' ...
Creating home directory `/home/learner' ...
Copying files from `/etc/skel' ...
New password: 
Retype new password: 
passwd: password updated successfully
Changing the user information for learner
Enter the new value, or press ENTER for the default
	Full Name []: Learner
	Room Number []: 
	Work Phone []: 
	Home Phone []: 
	Other []: 
Is the information correct? [Y/n] y
user@debian:~/hw2$ sudo usermod -aG sudo learner
user@debian:~/hw2$ id learner
uid=1001(learner) gid=1001(learner) groups=1001(learner),27(sudo)
user@debian:~/hw2$ ls -ld /home/learner
drwxr-xr-x 2 learner learner 4096 кві 21 00:01 /home/learner
```
