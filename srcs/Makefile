build:
	docker-compose up --build

up: fclean
	docker-compose up
stop: 
	docker-compose stop
clean: 
	docker rm -f $$(docker ps -aq)
fclean: clean
	docker rmi -f $$(docker images -q)
	docker volume rm -f $$(docker volume ls -q)
	docker network rm $$(docker network ls -q)
rm: clean
	rm -rf data/wordpress/*
	rm -rf data/mariadb/*