# Homework Module 6 — Backup Logs Script

## Bash script code

```bash
#!/bin/bash

# Скрипт створює архів логів із каталогу логів у каталозі бекапів.
# Захищає від паралельного запуску lock-файлом /tmp/backup.lock.

LOCKFILE="/tmp/backup.lock"
USAGE="Usage: ./backup.sh <log_dir><backup_dir>"

if [[ $# -ne 2 ]]; then
  echo "$USAGE"
  exit 1
fi

LOG_DIR="$1"
BACKUP_DIR="$2"

if [[ ! -d "$LOG_DIR" || ! -d "$BACKUP_DIR" ]]; then
  echo "$USAGE"
  exit 1
fi

if [[ -e "$LOCKFILE" ]]; then
  echo "Backup already running"
  exit 0
fi

touch "$LOCKFILE"
trap 'rm -f "$LOCKFILE"' EXIT

TIMESTAMP=$(date '+%F_%H-%M')
ARCHIVE="$BACKUP_DIR/logs_backup_${TIMESTAMP}.tar.gz"

if tar -czf "$ARCHIVE" -C "$LOG_DIR" .; then
  echo "Backup created: $ARCHIVE"
  exit 0
else
  echo "Backup failed"
  exit 2
fi
```

## Опис

Скрипт перевіряє:

- кількість аргументів (`2` аргументи обов'язково);
- чи обидва аргументи є існуючими каталогами.

Якщо аргументи неправильні, виводиться `Usage: ./backup.sh <log_dir><backup_dir>` і скрипт завершується з кодом `1`.

Після перевірки скрипт створює lock-файл `/tmp/backup.lock`, щоб уникнути паралельних запусків. Якщо lock-файл уже існує, виводиться `Backup already running`.

Далі будується ім'я архіву з датою й часом у форматі `logs_backup_YYYY-MM-DD_HH-MM.tar.gz`, і всі файли з каталогу логів архівуються в каталозі бекапів.

Якщо архівація пройшла успішно, виводиться:

```
Backup created: /full/path/to/archive
```

Якщо архівація не вдалася, виводиться `Backup failed` і скрипт завершується з кодом `2`.
