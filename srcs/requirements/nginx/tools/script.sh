mkdir /etc/nginx/ssl/
touch /etc/nginx/ssl/mbjaghou.key
touch /etc/nginx/ssl/mbjaghou.crt

openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:4096 -keyout /etc/nginx/ssl/mbjaghou.key -out /etc/nginx/ssl/mbjaghou.crt -subj "/C=MA/ST=BN/L=Khouribga/O=1337/OU=mbjaghou/CN=mbjaghou.42.fr"
nginx -g "daemon off;"