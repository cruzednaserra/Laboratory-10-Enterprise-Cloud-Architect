#!/usr/bin/env bash
set -Eeuo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
BACKUP_DIR="$SCRIPT_DIR/backups"
TIMESTAMP="$(date +%Y-%m-%d_%H-%M-%S)"
BACKUP_FILE="$BACKUP_DIR/wordpress-db-$TIMESTAMP.sql"

mkdir -p "$BACKUP_DIR"

if ! docker compose -f "$SCRIPT_DIR/docker-compose.yml" exec -T db sh -c \
  'exec mysqldump --single-transaction -u root -p"$MYSQL_ROOT_PASSWORD" wordpress' \
  > "$BACKUP_FILE"; then
  rm -f "$BACKUP_FILE"
  echo "ERROR: Database backup failed." >&2
  exit 1
fi

if [[ ! -s "$BACKUP_FILE" ]]; then
  rm -f "$BACKUP_FILE"
  echo "ERROR: Backup file is empty." >&2
  exit 1
fi

find "$BACKUP_DIR" -type f -name "wordpress-db-*.sql" -mtime +7 -delete

echo "Backup completed: $BACKUP_FILE"
