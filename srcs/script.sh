docker rm -f $(docker ps -aq);
docker rmi -f $(docker images -q);
docker volume rm -f $(docker volume ls -q);
docker network rm $(docker network ls -q);
rm -rf data/wordpress/*
rm -rf data/mariadb/*