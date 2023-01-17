FROM debian:buster

RUN apt-get update && apt-get install -y nginx openssl

EXPOSE 443
WORKDIR /etc/nginx/ssl/private
WORKDIR /etc/nginx/ssl/certificate
RUN openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:4096 \
  -keyout /etc/nginx/ssl/private/mbjaghou.key -out /etc/nginx/ssl/certificate/mbjaghou.crt \
  -subj "/C=MA/ST=BN/L=Khouribga/O=1337/OU=mbjaghou/CN=mbjaghou.42.fr"

COPY conf/default /etc/nginx/sites-available/

CMD ["nginx", "-g", "daemon off;"]

