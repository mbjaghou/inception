
mkdir /etc/nginx/ssl/
openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:4096 -keyout /etc/nginx/ssl/mbjaghou.key -out /etc/nginx/ssl/mbjaghou.crt -subj "/C=MA/ST=BN/L=Khouribga/O=1337/OU=mbjaghou/CN=localhost"

nginx -g "daemon off;"