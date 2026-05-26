# Домашнє завдання №4. Пакети, сервіси та журнали

## Завдання 1. Менеджери пакетів 

1. Оновити список пакетів
```
user@debian:~/Documents/Learning$ sudo apt update
[sudo] password for user: 
Hit:1 http://debian.volia.net/debian bullseye InRelease
Hit:2 http://debian.volia.net/debian bullseye-updates InRelease                      
Hit:3 http://security.debian.org/debian-security bullseye-security InRelease         
Hit:4 https://packages.microsoft.com/repos/code stable InRelease
Reading package lists... Done            
Building dependency tree... Done
Reading state information... Done
344 packages can be upgraded. Run 'apt list --upgradable' to see them.
```

2. Встановити пакет
```
user@debian:~/Documents/Learning$ sudo apt install htop
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
Suggested packages:
  lm-sensors strace
The following NEW packages will be installed:
  htop
0 upgraded, 1 newly installed, 0 to remove and 344 not upgraded.
Need to get 127 kB of archives.
After this operation, 328 kB of additional disk space will be used.
Get:1 http://debian.volia.net/debian bullseye/main amd64 htop amd64 3.0.5-7 [127 kB]...
```

3. Перевірка версії
```
user@debian:~/Documents/Learning$ htop --version
htop 3.0.5
```

4. Видалити пакет
```
user@debian:~/Documents/Learning$ sudo apt remove htop
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following packages will be REMOVED:
  htop
0 upgraded, 0 newly installed, 1 to remove and 344 not upgraded.
After this operation, 328 kB disk space will be freed.
Do you want to continue? [Y/n] y
(Reading database ... 148963 files and directories currently installed.)
Removing htop (3.0.5-7) ...
Processing triggers for hicolor-icon-theme (0.17-2) ...
Processing triggers for gnome-menus (3.36.0-1) ...
Processing triggers for man-db (2.9.4-2) ...
Processing triggers for mailcap (3.69) ...
Processing triggers for desktop-file-utils (0.26-1) ...
```

## Завдання 2. Керування сервісами через systemctl

1. Перевірити статус сервісу
```
user@debian:~/Documents/Learning$ sudo systemctl status cron
● cron.service - Regular background program processing daemon
     Loaded: loaded (/lib/systemd/system/cron.service; enabled; vendor preset: enabled)
     Active: active (running) since Tue 2026-05-26 02:04:38 EEST; 16min ago
       Docs: man:cron(8)
   Main PID: 403 (cron)
      Tasks: 1 (limit: 2307)
     Memory: 676.0K
        CPU: 18ms
     CGroup: /system.slice/cron.service
             └─403 /usr/sbin/cron -f

тра 26 02:04:38 debian systemd[1]: Started Regular background program processing daemon.
lines 1-12
```

2. Зупинити сервіс
```
user@debian:~/Documents/Learning$ sudo systemctl stop cron
user@debian:~/Documents/Learning$ sudo systemctl status cron
● cron.service - Regular background program processing daemon
     Loaded: loaded (/lib/systemd/system/cron.service; enabled; vendor preset: enabled)
     Active: inactive (dead) since Tue 2026-05-26 02:23:27 EEST; 4s ago
       Docs: man:cron(8)
    Process: 403 ExecStart=/usr/sbin/cron -f $EXTRA_OPTS (code=killed, signal=TERM)
   Main PID: 403 (code=killed, signal=TERM)
        CPU: 18ms

тра 26 02:04:38 debian systemd[1]: Started Regular background program processing daemon.
тра 26 02:04:39 debian cron[403]: (CRON) INFO (pidfile fd = 3)
тра 26 02:04:39 debian cron[403]: (CRON) INFO (Running @reboot jobs)
тра 26 02:17:01 debian CRON[4665]: pam_unix(cron:session): session opened for user root(uid=0) by (uid=0)
```

3. Запустити знову
```
user@debian:~/Documents/Learning$ sudo systemctl start cron
user@debian:~/Documents/Learning$ sudo systemctl status cron
● cron.service - Regular background program processing daemon
     Loaded: loaded (/lib/systemd/system/cron.service; enabled; vendor preset: enabled)
     Active: active (running) since Tue 2026-05-26 02:24:24 EEST; 14s ago
```

4. Додати в автозавантаження
```
user@debian:~/Documents/Learning$ sudo systemctl enable cron
Synchronizing state of cron.service with SysV service script with /lib/systemd/systemd-sysv-install.
Executing: /lib/systemd/systemd-sysv-install enable cron
```

## Завдання 3. Робота з логами

1. Перейти в /var/log та вивести останні 10 рядків syslog
```
user@debian:/var/log$ sudo tail -n 10 syslog
[sudo] password for user: 
May 26 02:25:17 debian systemd[1]: Reloading.
May 26 02:25:17 debian systemd[1]: /lib/systemd/system/plymouth-start.service:16: Unit configured to use KillMode=none. This is unsafe, as it disables systemd's process lifecycle management for the service. Please update your service to use a safer KillMode=, such as 'mixed' or 'control-group'. Support for KillMode=none is deprecated and will eventually be removed.
May 26 02:25:17 debian systemd[1]: Reloading.
May 26 02:25:17 debian systemd[1]: /lib/systemd/system/plymouth-start.service:16: Unit configured to use KillMode=none. This is unsafe, as it disables systemd's process lifecycle management for the service. Please update your service to use a safer KillMode=, such as 'mixed' or 'control-group'. Support for KillMode=none is deprecated and will eventually be removed.
May 26 02:25:17 debian systemd[1]: Reloading.
May 26 02:25:17 debian systemd[1]: /lib/systemd/system/plymouth-start.service:16: Unit configured to use KillMode=none. This is unsafe, as it disables systemd's process lifecycle management for the service. Please update your service to use a safer KillMode=, such as 'mixed' or 'control-group'. Support for KillMode=none is deprecated and will eventually be removed.
May 26 02:25:18 debian systemd[1]: Starting Daily apt upgrade and clean activities...
May 26 02:25:18 debian systemd[1]: apt-daily-upgrade.service: Succeeded.
May 26 02:25:18 debian systemd[1]: Finished Daily apt upgrade and clean activities.
May 26 02:27:08 debian systemd[894]: Started VTE child process 5415 launched by gnome-terminal-server process 1721.
```

2. Переглянути помилки за допомогою journalctl
```
user@debian:~/Documents/Learning$ sudo journalctl -p err
-- Journal begins at Wed 2024-03-20 23:12:31 EET, ends at Tue 2026-05-26 02:31:59 EEST. --
бер 20 23:12:31 debian kernel: [drm:vmw_host_log [vmwgfx]] *ERROR* Failed to send host log message.
бер 20 23:12:31 debian kernel: [drm:vmw_host_log [vmwgfx]] *ERROR* Failed to send host log message.
бер 20 23:12:39 debian pipewire[514]: Failed to receive portal pid: org.freedesktop.DBus.Error.NameHasNoOwner: Could not get P>
бер 20 23:12:52 debian gdm-password][892]: gkr-pam: unable to locate daemon control file
бер 20 23:12:52 debian pipewire[911]: Failed to receive portal pid: org.freedesktop.DBus.Error.NameHasNoOwner: Could not get P>
бер 20 23:13:03 debian pulseaudio[912]: GetManagedObjects() failed: org.freedesktop.DBus.Error.TimedOut: Failed to activate se>
бер 20 23:20:51 debian pipewire[2352]: Failed to receive portal pid: org.freedesktop.DBus.Error.NameHasNoOwner: Could not get >
-- Boot a9c87f48dc574513b302d57168d91f97 --
лип 01 17:27:16 debian kernel: [drm:vmw_host_log [vmwgfx]] *ERROR* Failed to send host log message.
лип 01 17:27:16 debian kernel: [drm:vmw_host_log [vmwgfx]] *ERROR* Failed to send host log message.
лип 01 17:27:19 debian pipewire[513]: Failed to receive portal pid: org.freedesktop.DBus.Error.NameHasNoOwner: Could not get P>
```

3. Знайти в журналі запис про запуск сервісу
```
ser@debian:~/Documents/Learning$ sudo journalctl -u cron | grep Started
бер 20 23:12:37 debian systemd[1]: Started Regular background program processing daemon.
```

## Завдання 4. Створення власного сервісу

1. створити bash скрипт
```
sudo nano myscript.sh
#!/bin/bash

OUTPUT_FILE="$HOME/current_date.txt"

while true; do
	date "+%Y-%m-%d %H:%M:%S" >> "$OUTPUT_FILE"

	sleep 1
done
```

2. Створити файл конфігурації сервісу
```
user@debian:/etc/systemd/system$ sudo nano myscript.service
```

3. Налаштувати для завантаження
```
[Unit]
Description=Bash script that tract current date in a text file
After=network.target
Wants=network.target

[Service]
User=user
Group=user

WorkingDirectory=/home/user
ExecStart=/bin/bash /home/user/myscript.sh

Restart=on-failure
RestartSec=3
StartLimitIntervalSec=60
StartLimitBurst=5

[Install]
WantedBy=multi-user.target
```

4. Запустити та переконатись в роботі
```
user@debian:~/Documents/Learning$ sudo systemctl daemon-reload
[sudo] password for user: 
user@debian:~/Documents/Learning$ sudo systemctl start myscript
user@debian:~/Documents/Learning$ sudo systemctl status myscript
● myscript.service - Bash script that tract current date in a text file
     Loaded: loaded (/etc/systemd/system/myscript.service; disabled; vendor preset: enabled)
     Active: active (running) since Tue 2026-05-26 03:01:06 EEST; 9s ago
   Main PID: 6016 (bash)
      Tasks: 2 (limit: 2307)
     Memory: 608.0K
        CPU: 23ms
     CGroup: /system.slice/myscript.service
             ├─6016 /bin/bash /home/user/myscript.sh
             └─6095 sleep 1

тра 26 03:01:06 debian systemd[1]: Started Bash script that tract current date in a text file.
user@debian:~$ tail current_date.txt
2026-05-26 03:02:51
2026-05-26 03:02:52
2026-05-26 03:02:53
2026-05-26 03:02:54
2026-05-26 03:02:55
2026-05-26 03:02:56
2026-05-26 03:02:57
2026-05-26 03:02:58
2026-05-26 03:02:59
2026-05-26 03:03:00
```
