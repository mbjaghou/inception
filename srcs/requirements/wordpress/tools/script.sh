
sleep 5
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

mv wp-cli.phar /usr/local/bin/wp
chmod 777 /usr/local/bin/wp

wp config create --allow-root --dbname=${MYSQL_DATABASE} --dbuser=${MYSQL_USER} --dbpass=${MYSQL_PASSWORD} --dbhost=${DATA_HOST} --path='/var/www/html/wordpress'
sleep 5
wp core install --url=localhost --title=inception --admin_user=root --admin_password=root --admin_email=mbjaghou1@gmail.com --path='/var/www/html/wordpress' --allow-root
wp user create mbjaghou mbjaghou@gmail.com  --user_pass=root --role=author --path='/var/www/html/wordpress' --allow-root
wp theme install galaxis --activate --path=/var/www/html/wordpress --allow-root

mkdir -p /run/php/
/usr/sbin/php-fpm7.3 -F