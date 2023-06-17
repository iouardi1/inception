#!/bin/bash

#check if wp-config.php exist
if [ -f /var/www/wordpress ]
then
	echo "wordpress already downloaded"
else

	MYSQL_HOSTNAME="mariadb"
	MYSQL_DATABASE="wordpress"
	MYSQL_USER="iouardi"
	MYSQL_PASSWORD="new1234"

	cd /var/www/
	wget http://wordpress.org/latest.tar.gz
	tar xfz latest.tar.gz
	mv wordpress/wp-config-sample.php wordpress/wp-config.php && chmod +x wordpress/wp-config.php
	sed -i "s/username_here/$MYSQL_USER/g" wordpress/wp-config.php
	sed -i "s/password_here/$MYSQL_PASSWORD/g" wordpress/wp-config.php
	sed -i "s/localhost/$MYSQL_HOSTNAME/g" wordpress/wp-config.php
	sed -i "s/database_name_here/$MYSQL_DATABASE/g" wordpress/wp-config.php



	chown -R www-data:www-data /var/www/wordpress
	wp core install --allow-root --path=/var/www/wordpress --url=localhost --title=ihsan --admin_user=supervisor --admin_password=strongpassword --admin_email=info@example.com 

	wp user create --allow-root --path=/var/www/wordpress ihsan ihssaneouardi2@gmail.com --role=author --user_pass=ihsan1234
fi

exec "$@"