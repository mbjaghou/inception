FROM debian:buster

RUN apt-get update && apt-get install -y nginx openssl


COPY /tools/script.sh ./

COPY conf/default /etc/nginx/sites-available/

CMD [ "bash", "script.sh" ]
EXPOSE 443
# CMD [ "nginx", "-g", "daemon off;" ]

