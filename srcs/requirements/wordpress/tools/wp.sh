#!/bin/bash

#check if wp-config.php exist
sleep 5
if [ -f /var/www/wordpress ]
then
	echo "wordpress already downloaded"
else
	cd /var/www/
	wget http://wordpress.org/latest.tar.gz
	tar xfz latest.tar.gz
	mv wordpress/wp-config-sample.php wordpress/wp-config.php && chmod +x wordpress/wp-config.php

	sed -i "s/username_here/$MYSQL_USER/g" wordpress/wp-config.php
	sed -i "s/password_here/$MYSQL_PASSWORD/g" wordpress/wp-config.php
	sed -i "s/localhost/$MYSQL_HOSTNAME/g" wordpress/wp-config.php
	sed -i "s/database_name_here/$MYSQL_DATABASE/g" wordpress/wp-config.php

	#here
	sed -i "s/localhost/$DOMAIN_NAME/g" wordpress/wp-config.php

	chown -R www-data:www-data /var/www/wordpress
	wp core install --allow-root --path=/var/www/wordpress --url=$DOMAIN_NAME --title=ihsan --admin_user=$admin_user --admin_password=$admin_password --admin_email=$admin_email

	wp user create --allow-root --path=/var/www/wordpress $user $user_email --role=author --user_pass=$user_pass
fi

exec "$@"


# F in fpm 
#  remove the credentiels from the script
# expose port
# remove php config file
