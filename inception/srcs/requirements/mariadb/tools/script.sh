   service mysql start &&  mysql -e "CREATE DATABASE inception;" && \
   mysql -e  "CREATE USER 'wordpressuser'@'localhost' IDENTIFIED BY 'password';"  && \
    mysql -e "FLUSH PRIVILEGES;"

