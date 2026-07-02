# Домашнє завдання №5. Мережа та віддалене підключення

## Завдання 1. Мережева діагностика

1. 
```bash
user@debian:~$ ip a
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host 
       valid_lft forever preferred_lft forever
2: enp0s3: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP group default qlen 1000
    link/ether 08:00:27:c1:5c:60 brd ff:ff:ff:ff:ff:ff
    inet 10.0.2.15/24 brd 10.0.2.255 scope global dynamic noprefixroute enp0s3
       valid_lft 85716sec preferred_lft 85716sec
    inet6 fd17:625c:f037:2:7c44:216:26e7:6143/64 scope global temporary dynamic 
       valid_lft 86106sec preferred_lft 14106sec
    inet6 fd17:625c:f037:2:a00:27ff:fec1:5c60/64 scope global dynamic mngtmpaddr noprefixroute 
       valid_lft 86106sec preferred_lft 14106sec
    inet6 fe80::a00:27ff:fec1:5c60/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever
```

2. 
```bash
user@debian:~$ ping 8.8.8.8
PING 8.8.8.8 (8.8.8.8) 56(84) bytes of data.
64 bytes from 8.8.8.8: icmp_seq=1 ttl=255 time=23.8 ms
64 bytes from 8.8.8.8: icmp_seq=2 ttl=255 time=23.1 ms
64 bytes from 8.8.8.8: icmp_seq=3 ttl=255 time=23.2 ms
64 bytes from 8.8.8.8: icmp_seq=4 ttl=255 time=23.5 ms
64 bytes from 8.8.8.8: icmp_seq=5 ttl=255 time=23.2 ms
64 bytes from 8.8.8.8: icmp_seq=6 ttl=255 time=23.4 ms
64 bytes from 8.8.8.8: icmp_seq=8 ttl=255 time=23.5 ms
64 bytes from 8.8.8.8: icmp_seq=9 ttl=255 time=24.0 ms
64 bytes from 8.8.8.8: icmp_seq=10 ttl=255 time=23.6 ms
64 bytes from 8.8.8.8: icmp_seq=11 ttl=255 time=23.2 ms
64 bytes from 8.8.8.8: icmp_seq=12 ttl=255 time=23.5 ms
64 bytes from 8.8.8.8: icmp_seq=13 ttl=255 time=42.7 ms
64 bytes from 8.8.8.8: icmp_seq=14 ttl=255 time=23.0 ms
64 bytes from 8.8.8.8: icmp_seq=15 ttl=255 time=22.8 ms
^C
--- 8.8.8.8 ping statistics ---
15 packets transmitted, 14 received, 6.66667% packet loss, time 14045ms
rtt min/avg/max/mdev = 22.843/24.756/42.701/4.986 ms
```

3. 
```bash
user@debian:~$ ss -tulpn
Netid     State       Recv-Q      Send-Q           Local Address:Port            Peer Address:Port     Process     
udp       UNCONN      0           0                      0.0.0.0:57362                0.0.0.0:*                    
udp       UNCONN      0           0                      0.0.0.0:5353                 0.0.0.0:*                    
udp       UNCONN      0           0                      0.0.0.0:631                  0.0.0.0:*                    
udp       UNCONN      0           0                         [::]:59551                   [::]:*                    
udp       UNCONN      0           0                         [::]:5353                    [::]:*                    
tcp       LISTEN      0           128                    0.0.0.0:22                   0.0.0.0:*                    
tcp       LISTEN      0           128                  127.0.0.1:631                  0.0.0.0:*                    
tcp       LISTEN      0           128                       [::]:22                      [::]:*                    
tcp       LISTEN      0           128                      [::1]:631                     [::]:*
```

### Звіт

## Завдання 2. 

1. 
2. 
3. 
4. 

### Звіт:


## Завдання 3.

1. 
2. 
3. 
4. 
5. 

### Звіт: 
