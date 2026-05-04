# Домашнє завдання №3. Процеси та ресурси
## Завдання 1. Огляд активних процесів:
1. 
```
ser@debian:~$ ps aux
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.0  0.4  98584  9264 ?        Ss   17:58   0:01 /sbin/init
root           2  0.0  0.0      0     0 ?        S    17:58   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        I<   17:58   0:00 [rcu_gp]
root           4  0.0  0.0      0     0 ?        I<   17:58   0:00 [rcu_par_gp]
root           6  0.0  0.0      0     0 ?        I<   17:58   0:00 [kworker/0:0H-events_highpri]
root           8  0.0  0.0      0     0 ?        I<   17:58   0:00 [mm_percpu_wq]
...
```
2. 
```
user@debian:~$ top

top - 18:47:41 up 49 min,  1 user,  load average: 0,14, 0,35, 0,31
Tasks: 167 total,   1 running, 166 sleeping,   0 stopped,   0 zombie
%Cpu(s):  0,7 us,  1,8 sy,  0,0 ni, 97,5 id,  0,0 wa,  0,0 hi,  0,0 si,  0,0 st
MiB Mem : 76,3/1971,2   [||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||                        ]
MiB Swap:  8,5/975,0    [||||||||                                                                                            ]

    PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND                                                                       
   1035 user      20   0 3502600 352464 108168 S   5,3  17,5   1:32.56 gnome-shell
```
3. 
```
user@debian:~$ ps aux | grep bash
user        3120  0.0  0.2  11008  **5192** pts/1    Ss   18:40   0:00 bash
```

## Завдання 2. Робота у фоні та керування процесами
1. 
```
user@debian:~$ sleep 1000 &
[1] 3352
```

2. 
```
ser@debian:~$ jobs
[1]+  Running                 sleep 1000 &
```

3. 
```
user@debian:~$ fg %1
sleep 1000
```

4. 
```
^Z
[1]+  Stopped                 sleep 1000
user@debian:~$ kill 3352
```

5. 
```
user@debian:~$ nohup sleep 60 &
[2] 3384
```

## Завдання 3. Пріорітети та обмеження
1. 
```
user@debian:~$ nice -n 10 sleep 1000 &
[4] 3408
```

2. 
```
user@debian:~$ sudo renice -n -5 -p 3408
3408 (process ID) old priority 10, new priority -5
```

3.
```
ser@debian:~$ ulimit -a
real-time non-blocking time  (microseconds, -R) unlimited
core file size              (blocks, -c) 0
data seg size               (kbytes, -d) unlimited
scheduling priority                 (-e) 0
file size                   (blocks, -f) unlimited
pending signals                     (-i) 7691
max locked memory           (kbytes, -l) 252308
max memory size             (kbytes, -m) unlimited
open files                          (-n) 1024
pipe size                (512 bytes, -p) 8
POSIX message queues         (bytes, -q) 819200
real-time priority                  (-r) 0
stack size                  (kbytes, -s) 8192
cpu time                   (seconds, -t) unlimited
max user processes                  (-u) 7691
virtual memory              (kbytes, -v) unlimited
file locks                          (-x) unlimited
``` 

## Завдання 4. Моніторинг ресурсів
1. 
```
user@debian:~$ sudo df -h
Filesystem      Size  Used Avail Use% Mounted on
udev            962M     0  962M   0% /dev
tmpfs           198M  1,2M  196M   1% /run
/dev/sda1        19G  6,9G   11G  39% /
tmpfs           986M   23M  964M   3% /dev/shm
tmpfs           5,0M  4,0K  5,0M   1% /run/lock
tmpfs           198M  124K  197M   1% /run/user/1000
```

2. 
```
user@debian:~$ free -h
               total        used        free      shared  buff/cache   available
Mem:           1,9Gi       1,3Gi        94Mi        36Mi       542Mi       455Mi
Swap:          974Mi        98Mi       876Mi

```
