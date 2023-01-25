if [ -d "/var/lib/mysql/${MYSQL_DATABASE}" ]
then
    echo "========DATABASE ALREADY EXIST==========="
else
    service mysql start;
    sleep 1;
    mysql -e "CREATE DATABASE ${MYSQL_DATABASE};";
    mysql -e "CREATE USER  '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';";
    mysql -e "GRANT ALL PRIVILEGES ON ${MYSQL_DATABASE}.* TO '${MYSQL_USER}'@'%';";
    mysql -e "FLUSH PRIVILEGES;";
    mysql -e "SET PASSWORD FOR '${MYSQL_ROOT_USER}'@'localhost' = PASSWORD('${MYSQL_ROOT_PASSWORD}');";
    kill `cat /var/run/mysqld/mysqld.pid`;
    sleep 3;
fi
mysqld_safe
