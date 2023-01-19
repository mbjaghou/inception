if [ -f /var/www/html/wordpress/wp-config.php ]
then 
    echo "=====wp-config.php exists!====="
else
        sleep 3
        # create wp-config file
        wp config create --allow-root --dbname=${MYSQL_DATABASE} \
         --dbuser=${MYSQL_USER} \
         --dbpass=${MYSQL_PASSWORD} \
         --dbhost=${DATA_HOST} \
         --path=${PATH_WP}

        #install wordpress and creats an admin user
        wp core install --url=localhost --title=${TITLE_WP} --admin_user=${ADMIN} --admin_password=${ADMIN_PASS} --admin_email=${ADMIN_EMAIL} --path=${PATH_WP} --allow-root

        #create new admin user wordpress
        wp user create ${USER_WP} ${MAIL_WP}  --user_pass=${USER_PASSWORD_WP} --role=author --path=${PATH_WP} --allow-root
        #install theme for my website
        wp theme install rife-free --activate --path=${PATH_WP} --allow-root
        service php7.3-fmp stop
fi
php-fpm7.3 -F