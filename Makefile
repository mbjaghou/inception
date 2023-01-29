build:
	mkdir -p /home/mbjaghou/data/mariadb
	mkdir -p /home/mbjaghou/data/wordpress
	docker-compose -f ./srcs/docker-compose.yml up --build
up:
	docker-compose -f ./srcs/docker-compose.yml up
stop: 
	docker-compose -f ./srcs/docker-compose.yml stop
clean: 
	docker rm -f $$(docker ps -aq)
fclean: clean
	docker rmi -f $$(docker images -q)
	docker volume rm -f $$(docker volume ls -q)
	docker network rm $$(docker network ls -q)
rm:
	rm -rf /home/mbjaghou/data/mariadb/*
	rm -rf /home/mbjaghou/data/wordpress/*