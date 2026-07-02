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
