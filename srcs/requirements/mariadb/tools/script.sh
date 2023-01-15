    if [ ! -d /var/lib/mysql/inception ]; then
    service mysql start && mysql -e "CREATE DATABASE inception;"
   mysql -e  "CREATE USER 'wordpressuser'@'localhost' IDENTIFIED BY 'password';"
   mysql -e "GRANT ALL PRIVILEGES ON inception.* TO 'wordpressuser'@'localhost';"
   mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '0000';"
     mysql -e "FLUSH PRIVILEGES;"
    fi