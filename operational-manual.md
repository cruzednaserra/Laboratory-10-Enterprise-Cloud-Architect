# Operational Manual

## 1. Start the Services

Open Ubuntu and go to the project directory:

cd ~/Laboratory-10-Enterprise-Cloud-Architect

Start the containers:

docker compose up -d

## 2. Check the Services

Run:

docker compose ps

The services should show as running:

- enterprise-web
- enterprise-db

## 3. Test the Web Server

Run:

curl http://localhost:8080

The Nginx welcome page should be displayed.

## 4. Stop the Services

To stop the containers:

docker compose down

## 5. Start Again

To start the services again:

docker compose up -d

## 6. Troubleshooting

If a container is not running, check its status:

docker compose ps

View the logs using:

docker compose logs

For a specific service:

docker compose logs web

or:

docker compose logs database

## 7. Important Notes

Do not delete the Docker volume if the database data is still needed.

The web service uses port 8080 on the Ubuntu server.
