FROM debian:buster

RUN apt-get update && apt-get install -y  php-fpm php-mysql mariadb-client wget curl


WORKDIR /var/www/html
RUN cd /var/www/html && wget https://wordpress.org/latest.tar.gz && tar -xzvf latest.tar.gz && rm -rf latest.tar.gz
RUN sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf

COPY /tools/script.sh /

EXPOSE 9000

CMD [ "bash", "/script.sh" ]
