
if [ -f /var/www/html/wordpress/wp-config.php ]
then 
    echo "=====wp-config.php They exist!====="
else
        sleep 3
        wp config create --allow-root --dbname=${MYSQL_DATABASE} --dbuser=${MYSQL_USER} --dbpass=${MYSQL_PASSWORD} --dbhost=${DATA_HOST} --path='/var/www/html/wordpress'
        wp core install --url=localhost --title=inception --admin_user=root --admin_password=root --admin_email=mbjaghou1@gmail.com --path='/var/www/html/wordpress' --allow-root
        wp user create mbjaghou mbjaghou@gmail.com  --user_pass=root --role=author --path='/var/www/html/wordpress' --allow-root
        wp theme install PopularFX --activate --path=/var/www/html/wordpress --allow-root
fi
mkdir -p /run/php/
/usr/sbin/php-fpm7.3 -F