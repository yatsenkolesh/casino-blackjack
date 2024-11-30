echo "starting docker containers..."

cd docker && docker-compose up -d

echo "Waiting for docker to initialize... (creating the database on the first run)"

sleep 10

docker exec app-php php artisan migrate

