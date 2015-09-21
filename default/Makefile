all: run

run:
	docker-compose up -d

stop:
	docker-compose stop

status:
	docker-compose ps

clean:
	docker rm $$(docker ps -aq)

logs:
	docker-compose logs
