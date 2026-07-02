# Домашнє завдання №5. Мережа та віддалене підключення

## Завдання 1. Мережева діагностика

1. Виведи IP-адреси та інтерфейси:

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

2. Перевір доступність публічного вузла:

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

3. Перевір відкриті listening-порти:

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

- Локальна IP-адреса є 192.168.0.214
- Доступ до інтернету підтвержується виконанням команди `ping` до DNS сервера Google та успішною доставкою пакетів
- На порту 22 працює служба sshd

## Завдання 2. SSH-доступ з ключами та config

1. Згенеруй SSH-ключ (якщо ще не існує):

```bash
ubuntu@Max:~$ ssh-keygen -t rsa -b 4096
Generating public/private rsa key pair.
Enter file in which to save the key (/home/ubuntu/.ssh/id_rsa): id_rsa_vm
Enter passphrase for "id_rsa_vm" (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in id_rsa_vm
Your public key has been saved in id_rsa_vm.pub
The key fingerprint is:
```

2. Скопіюй ключ на сервер:

```bash
ubuntu@Max:~$ ssh-copy-id -i ~/.ssh/id_rsa_vm.pub user@192.168.0.214
/usr/bin/ssh-copy-id: INFO: Source of key(s) to be installed: "/home/ubuntu/.ssh/id_rsa_vm.pub"
/usr/bin/ssh-copy-id: INFO: attempting to log in with the new key(s), to filter out any that are already installed
/usr/bin/ssh-copy-id: INFO: 1 key(s) remain to be installed -- if you are prompted now it is to install the new keys
** WARNING: connection is not using a post-quantum key exchange algorithm.
** This session may be vulnerable to "store now, decrypt later" attacks.
** The server may need to be upgraded. See https://openssh.com/pq.html
user@192.168.0.214's password:

Number of key(s) added: 1

Now try logging into the machine, with: "ssh -i /home/ubuntu/.ssh/id_rsa_vm 'user@192.168.0.214'"
and check to make sure that only the key(s) you wanted were added.

ubuntu@Max:~/.ssh$ ssh myserver
** WARNING: connection is not using a post-quantum key exchange algorithm.
** This session may be vulnerable to "store now, decrypt later" attacks.
** The server may need to be upgraded. See https://openssh.com/pq.html
Linux debian 5.10.0-28-amd64 #1 SMP Debian 5.10.209-2 (2024-01-31) x86_64

The programs included with the Debian GNU/Linux system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Debian GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent
permitted by applicable law.
Last login: Thu Jul  2 22:46:13 2026 from 192.168.0.147
user@debian:~$
```

3. Створи або онови файл ~/.ssh/config і додай Host-запис для сервера:

```bash
ubuntu@Max:~$ nano ~/.ssh/config
ubuntu@Max:~$ cat ~/.ssh/config
Host myserver
    HostName 192.168.0.214
    User user
    IdentityFile ~/.ssh/id_rsa_vm
```

4. Підключися до сервера короткою командою:

```bash
ubuntu@Max:~$ ssh myserver
** WARNING: connection is not using a post-quantum key exchange algorithm.
** This session may be vulnerable to "store now, decrypt later" attacks.
** The server may need to be upgraded. See https://openssh.com/pq.html
Linux debian 5.10.0-28-amd64 #1 SMP Debian 5.10.209-2 (2024-01-31) x86_64

The programs included with the Debian GNU/Linux system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Debian GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent
permitted by applicable law.
Last login: Thu Jul  2 22:46:13 2026 from 192.168.0.147
user@debian:~$
```

5. Пароль до користувача на сервері при виконанні запиту не запитується

### Звіт:

- Ім'я хоста в файлі конфігурації myserver (192.168.0.214)
- Підключення без пароля працює

## Завдання 3. Копіювання файлів між машинами

1. Створи локальний тестовий файл:

```bash
ubuntu@Max:~$ echo "test" > test.txt
```

2. Передай файл на сервер через scp.

```bash
ubuntu@Max:~$ scp test.txt myserver:~/
** WARNING: connection is not using a post-quantum key exchange algorithm.
** This session may be vulnerable to "store now, decrypt later" attacks.
** The server may need to be upgraded. See https://openssh.com/pq.html
test.txt                                                                                    100%    5     6.6KB/s   00:00
```

3. Створи на сервері директорію для синхронізації.

```bash
ubuntu@Max:~$ ssh myserver "mkdir -p ~/sync_folder"
```

4. Синхронізуй локальну папку з сервером через rsync.

```bash
ubuntu@Max:~$ mkdir -p ~/local_folder && echo "hello" > ~/local_folder/file.txt
ubuntu@Max:~$ rsync -avz ~/local_folder/ myserver:~/sync_folder/
** WARNING: connection is not using a post-quantum key exchange algorithm.
** This session may be vulnerable to "store now, decrypt later" attacks.
** The server may need to be upgraded. See https://openssh.com/pq.html
sending incremental file list
./
file.txt

sent 140 bytes  received 38 bytes  356.00 bytes/sec
total size is 6  speedup is 0.03
```

5. Підключися через sftp та перевір, що файли присутні.

```bash
ubuntu@Max:~$ sftp myserver
** WARNING: connection is not using a post-quantum key exchange algorithm.
** This session may be vulnerable to "store now, decrypt later" attacks.
** The server may need to be upgraded. See https://openssh.com/pq.html
Connected to myserver.
sftp> ls sync_folder
sync_folder/file.txt
sftp> quit
Read from remote host 192.168.0.214: Connection reset by peer
client_loop: send disconnect: Broken pipe
```

### Звіт:

- Шляхи по файлів на сервері:
  - для файлу: ~/test.txt
  - для директорії: ~/sync_folder
- Для перевірки використовував `ls sync_folder`
