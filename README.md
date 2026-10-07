# Laboratory 10 – Enterprise Cloud Architect

## Project Overview

This project demonstrates an enterprise-style cloud-native environment using Docker, Docker Compose, Ubuntu Server, Git, and GitHub.

## Technologies Used

- Ubuntu Server
- Docker
- Docker Compose
- Nginx
- MySQL
- Git
- GitHub

## Services

### Web Server
Nginx is used as the web server.

Port:
- 8080

### Database
MySQL is used as the database service.

Database:
- enterprise

## Docker Compose

The project uses Docker Compose to run the web server and database together.

## Testing

The Nginx web service was tested using:

```bash
curl http://localhost:8080

