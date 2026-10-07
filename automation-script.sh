#!/bin/bash

PROJECT_DIR="$HOME/Laboratory-10-Enterprise-Cloud-Architect"
BACKUP_DIR="$HOME/backups"

mkdir -p "$BACKUP_DIR"

DATE=$(date +"%Y-%m-%d_%H-%M-%S")

docker compose -f "$PROJECT_DIR/docker-compose.yml" exec -T database \
  sh -c 'mysqldump -u root -p"$MYSQL_ROOT_PASSWORD" "$MYSQL_DATABASE"' \
  > "$BACKUP_DIR/database_$DATE.sql"

if [ $? -eq 0 ]; then
    echo "Backup completed successfully:"
    echo "$BACKUP_DIR/database_$DATE.sql"
else
    echo "Backup failed."
    exit 1
fi
