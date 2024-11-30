#make up
up:
	chmod -R 755 docker/start.sh
	./docker/start.sh


upf:
	cd docker && docker-compose up -d

stop:
	cd docker && docker-compose down
