FROM debian:buster

RUN apt-get update && apt-get install -y nginx openssl

COPY /tools/script.sh ./
COPY conf/default /etc/nginx/sites-available/
WORKDIR /etc/nginx/ssl/

RUN touch /etc/nginx/ssl/mbjaghou.key
RUN touch /etc/nginx/ssl/mbjaghou.crt

CMD [ "bash", "script.sh" ]
# CMD [ "nginx", "-g", "daemon off;" ]

