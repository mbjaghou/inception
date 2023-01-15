FROM debian:buster

RUN apt-get update && apt-get install -y mariadb-server

COPY /tools/script.sh ./

CMD [ "bash", "script.sh" ]

EXPOSE 3306
