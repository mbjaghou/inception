FROM debian:buster

RUN apt-get update && apt-get install -y  php-fpm php-mysql mariadb-client wget curl

WORKDIR /var/www/html
RUN cd /var/www/html && wget https://wordpress.org/latest.tar.gz && tar -xzvf latest.tar.gz && rm -rf latest.tar.gz

COPY conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar &&  mv wp-cli.phar /usr/local/bin/wp && chmod 777 /usr/local/bin/wp
COPY /tools/script.sh /

RUN service php7.3-fpm start
CMD [ "bash", "/script.sh" ]
