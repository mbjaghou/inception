if [ -d "/var/lib/mysql/${MYSQL_DATABASE}" ]
then
    echo "========DATABASE ALREADY EXIST==========="
else
    service mysql start 2>/dev/null;
    mysql -e "CREATE DATABASE ${MYSQL_DATABASE};";
    mysql -e  "CREATE USER  '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';";
    mysql -e "GRANT ALL PRIVILEGES ON ${MYSQL_DATABASE}.* TO '${MYSQL_USER}'@'%';";
    mysql -e "FLUSH PRIVILEGES;";
    mysql -e "ALTER USER '${MYSQL_ROOT_USER}'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}'";
    mysqladmin -u${MYSQL_ROOT_USER} -p${MYSQL_ROOT_PASSWORD} shutdown;
fi
exec "$@"
