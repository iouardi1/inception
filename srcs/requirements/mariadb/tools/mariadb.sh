#!/bin/bash

/etc/init.d/mysql start

# we Create database here
mysql -e "CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE};"

# we Create user and grant privileges here
mysql -e "CREATE USER IF NOT EXISTS'${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';"
mysql -e "GRANT ALL PRIVILEGES ON ${MYSQL_DATABASE}.* TO '${MYSQL_USER}'@'%';"
mysql -e "FLUSH PRIVILEGES;"

# /etc/init.d/mysql stop