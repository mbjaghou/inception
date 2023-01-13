FROM debian:buster

RUN apt-get update && apt-get install -y mariadb-server

# RUN  service mysql start &&    mysql -e "CREATE DATABASE mydb;" && \
#     mysql -e "GRANT ALL ON mydb.* TO 'myuser'@'%' IDENTIFIED BY 'mypassword';" && \
#     mysql -e "FLUSH PRIVILEGES;"

COPY /tools/script.sh ./

# ENTRYPOINT ["bash", "script.sh"]