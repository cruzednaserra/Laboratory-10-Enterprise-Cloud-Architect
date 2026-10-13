# CCM101 — Mission 10: The Enterprise Cloud Architect

**Section:** BSIT 4A  
**Subject:** CCM101 — Cloud Computing

## Project Overview

The Enterprise Cloud Architect is a cloud computing project that demonstrates the deployment of a web application using Ubuntu Server, Docker, Docker Compose, WordPress, and MySQL.

The project focuses on containerization, network security, persistent storage, and automated database backups.

## Project Objectives

- Deploy WordPress and MySQL using Docker Compose.
- Configure Ubuntu Server and UFW firewall.
- Use Docker named volumes for persistent storage.
- Automate database backups using Bash and Cron.
- Understand virtual machines and cloud infrastructure.

## System Architecture

Windows 11 Host → VirtualBox → Ubuntu Server VM → UFW → Docker Engine → Docker Compose → WordPress + MySQL.

### Network Configuration

- Adapter 1: NAT — Internet access.
- Adapter 2: Host-only — Private connection to Windows.
- Example VM IP: `192.168.56.101`

## Technologies Used

- Ubuntu Server
- Docker Engine
- Docker Compose
- WordPress
- MySQL 8.0
- UFW Firewall
- Bash and Cron
- VirtualBox
- GitHub

## Project Members

1. ABAIGAR, RUSSELL IAN REGUDO
2. CRUZ, EDNA SERRA
3. TACDOL, TYRON JAMES LABIANO

## Expected Results

The project aims to provide a working WordPress website, persistent database storage, firewall protection, and automated database backups.

## Repository Files

- `docker-compose.yml` — Application services.
- `.env.example` — Example environment configuration.
- `automation-script.sh` — Database backup automation.
- `operational-manual.md` — Setup and troubleshooting guide.
- `final-reflection.md` — Project reflection template.
- `CCM101_Mission10_Architecture.drawio` — Architecture diagram.

## Security Reminder

Do not upload actual passwords, `.env` files, or database backups to GitHub.
