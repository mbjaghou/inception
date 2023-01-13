    service mysql start && mysql -e "CREATE DATABASE mydb;" && \
    mysql -e "GRANT ALL ON mydb.* TO 'myuser'@'%' IDENTIFIED BY 'mypassword';" && \
    mysql -e "FLUSH PRIVILEGES;" 
    # && \
    # service mysql stop