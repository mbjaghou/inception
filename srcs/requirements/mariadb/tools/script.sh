if [ -d "/var/lib/mysql/${MYSQL_DATABASE}" ]
then
    echo "========DATABASE ALEARDY EXIST==========="
else
    service mysql start
    mysql -e "CREATE DATABASE ${MYSQL_DATABASE};"
    mysql -e  "CREATE USER  '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';"
    mysql -e "GRANT ALL PRIVILEGES ON ${MYSQL_DATABASE}.* TO '${MYSQL_USER}'@'%';"
    mysql -e "FLUSH PRIVILEGES;"

    sleep 5
    mysql -e "ALTER USER '${MYSQL_ROOT_USER}'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';" ;
    mysqladmin -u${MYSQL_ROOT_USER} -p${MYSQL_ROOT_PASSWORD} shutdown
fi
exec "$@"
