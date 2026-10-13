# Operational Manual — CCM101 Mission 10

## Project Overview

This project deploys WordPress and MySQL using Docker Compose on an Ubuntu Server virtual machine.

## System Architecture

Windows 11 → VirtualBox → Ubuntu Server → UFW → Docker Engine → Docker Compose → WordPress and MySQL.

## Connect Through PowerShell

Replace the IP address if your VM uses a different address.

```powershell
ssh cloudadmin@192.168.56.101
```

## Check Docker

```bash
sudo docker --version
sudo docker compose version
sudo docker compose ps
```

## Start the Application

```bash
cd ~/ccm101-project
sudo docker compose up -d
sudo docker compose ps
```

## Check Logs

```bash
sudo docker compose logs --tail=100 db
sudo docker compose logs --tail=100 wordpress
```

## Test Persistent Storage

Stop containers without deleting volumes:

```bash
sudo docker compose down
sudo docker compose up -d
```

Check if your WordPress pages and database data remain available.

## Run a Database Backup

```bash
chmod +x automation-script.sh
sudo ./automation-script.sh
ls -lh backups/
```

## Important Notes

- Do not publish database passwords.
- Do not expose MySQL port 3306 unnecessarily.
- Avoid `docker compose down -v` when you need to preserve data.
- Use the actual IP address configured on your VM.
