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
    inet 192.168.0.214/24 brd 192.168.0.255 scope global dynamic noprefixroute enp0s3
       valid_lft 7104sec preferred_lft 7104sec
    inet6 fe80::a00:27ff:fec1:5c60/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever
```

2. 
```bash
user@debian:~$ ping 8.8.8.8
PING 8.8.8.8 (8.8.8.8) 56(84) bytes of data.
64 bytes from 8.8.8.8: icmp_seq=1 ttl=118 time=25.6 ms
64 bytes from 8.8.8.8: icmp_seq=2 ttl=118 time=23.3 ms
64 bytes from 8.8.8.8: icmp_seq=3 ttl=118 time=22.7 ms
64 bytes from 8.8.8.8: icmp_seq=4 ttl=118 time=22.6 ms
64 bytes from 8.8.8.8: icmp_seq=5 ttl=118 time=25.4 ms
64 bytes from 8.8.8.8: icmp_seq=6 ttl=118 time=23.7 ms
^C
--- 8.8.8.8 ping statistics ---
6 packets transmitted, 6 received, 0% packet loss, time 5010ms
rtt min/avg/max/mdev = 22.614/23.867/25.553/1.199 ms
```

3. 
```bash
user@debian:~$ sudo ss -tulpn
Netid  State   Recv-Q   Send-Q     Local Address:Port      Peer Address:Port  Process                                  
udp    UNCONN  0        0                0.0.0.0:5353           0.0.0.0:*      users:(("avahi-daemon",pid=399,fd=12))  
udp    UNCONN  0        0                0.0.0.0:631            0.0.0.0:*      users:(("cups-browsed",pid=470,fd=7))   
udp    UNCONN  0        0                0.0.0.0:46791          0.0.0.0:*      users:(("avahi-daemon",pid=399,fd=14))  
udp    UNCONN  0        0                   [::]:5353              [::]:*      users:(("avahi-daemon",pid=399,fd=13))  
udp    UNCONN  0        0                   [::]:50932             [::]:*      users:(("avahi-daemon",pid=399,fd=15))  
tcp    LISTEN  0        128              0.0.0.0:22             0.0.0.0:*      users:(("sshd",pid=483,fd=3))           
tcp    LISTEN  0        128            127.0.0.1:631            0.0.0.0:*      users:(("cupsd",pid=459,fd=7))          
tcp    LISTEN  0        128                 [::]:22                [::]:*      users:(("sshd",pid=483,fd=4))           
tcp    LISTEN  0        128                [::1]:631               [::]:*      users:(("cupsd",pid=459,fd=6))
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
