FROM debian:buster

RUN apt-get update && apt-get install -y mariadb-server

COPY /tools/script.sh ./

EXPOSE 3306
RUN sed -i 's/bind-address/# bind-address/g' /etc/mysql/mariadb.conf.d/50-server.cnf

ENTRYPOINT [ "bash", "script.sh" ]
CMD [ "mysqld_safe" ]
