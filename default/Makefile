all: run

run:
	sudo docker-compose up -d

stop:
	sudo docker-compose stop

status:
	sudo docker-compose ps

clean:
	sudo docker rm $$(sudo docker ps -aq)

logs:
	sudo docker-compose logs
