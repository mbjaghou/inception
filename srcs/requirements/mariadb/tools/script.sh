if [ -d "/var/lib/mysql/${MYSQL_DATABASE}" ]

then
    echo "DATABASE EXIST"
else
    service mysql start
    mysql -u root -e "CREATE DATABASE ${MYSQL_DATABASE};"
    mysql -u root -e  "CREATE USER  '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';"
    mysql -u root -e "GRANT ALL PRIVILEGES ON ${MYSQL_DATABASE}.* TO '${MYSQL_USER}'@'%';"
    mysql -u root -e "FLUSH PRIVILEGES;"
    mysql -u root -e "ALTER USER '${MYSQL_ROOT_USER}'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}'; FLUSH PRIVILEGES;" ;
    mysqladmin -u${MYSQL_ROOT_USER} -p${MYSQL_ROOT_PASSWORD} shutdown
fi
