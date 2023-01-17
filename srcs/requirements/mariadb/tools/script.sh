if [ -d "/var/lib/mysql/${MYSQL_DATABASE}" ]

then
    echo "DATABASE EXIST"
else
    service mysql start && mysql -e "CREATE DATABASE ${MYSQL_DATABASE};"
    mysql -e  "CREATE USER  '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';"
    mysql -e "GRANT ALL PRIVILEGES ON ${MYSQL_DATABASE}.* TO '${MYSQL_USER}'@'%';"
    mysql -e "FLUSH PRIVILEGES;"
    sleep 5
    mysql -e "ALTER USER '${MYSQL_ROOT_USER}'@'%' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}'; FLUSH PRIVILEGES;" ;
    mysqladmin -u${MYSQL_ROOT_USER} -p${MYSQL_ROOT_PASSWORD} shutdown
fi
mysqld_safe
