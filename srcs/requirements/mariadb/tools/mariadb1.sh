#!/bin/bash

/etc/init.d/mysql start


DOMAIN_NAME="iouardi.42.fr"

MYSQL_HOSTNAME="mariadb"
MYSQL_DATABASE="wordpress"
MYSQL_USER="iouardi"
MYSQL_PASSWORD="new1234"
MYSQL_ROOT_PASSWORD="root4life"

# we Create database here
mysql -e "CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE};"

# we Create user and grant privileges here
mysql -e "CREATE USER IF NOT EXISTS'${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';"
mysql -e "GRANT ALL PRIVILEGES ON ${MYSQL_DATABASE}.* TO '${MYSQL_USER}'@'%';"
mysql -e "FLUSH PRIVILEGES;"

# /etc/init.d/mysql stop