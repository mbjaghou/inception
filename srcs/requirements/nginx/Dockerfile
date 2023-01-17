FROM debian:buster

RUN apt-get update && apt-get install -y nginx openssl

EXPOSE 443
WORKDIR /etc/nginx/ssl/
COPY /tools/script.sh ./

COPY conf/default /etc/nginx/sites-available/

CMD [ "bash", "script.sh" ]

