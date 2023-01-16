if [ ! -d /var/lib/mysql/inception ]; then
    service mysql start && mysql -e "CREATE DATABASE inception;"
    mysql -e  "CREATE USER 'wordpressuser'@'%' IDENTIFIED BY 'password';"
    mysql -e "GRANT ALL PRIVILEGES ON inception.* TO 'wordpressuser'@'%';"
    mysql -e "FLUSH PRIVILEGES;"
    sleep 2
    mysql -e "ALTER USER 'root'@'%' IDENTIFIED BY '0000';"
    mysqladmin -uroot -p0000 shutdown
fi
mysqld_safe
