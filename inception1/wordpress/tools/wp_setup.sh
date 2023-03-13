#!/bin/sh

mkdir -p /run/php/
wp core download --allow-root
wp core config  --dbname=$DB_NAME --dbuser=$DB_USR --dbhost=mariadb --dbpass=$DB_PASS  --allow-root
sed -i "s|define( 'DB_NAME', 'database_name_here' );|define( 'DB_NAME', '$DB_NAME' );|" wp-config.php
sed -i "s|define( 'DB_USER', 'username_here' );|define( 'DB_USER', '$DB_USR' );|" wp-config.php
sed -i "s|define( 'DB_PASSWORD', 'password_here' );|define( 'DB_PASSWORD', '$DB_PASS' );|" wp-config.php
wp core install --url=$WP_URL --title="wordpress" --admin_user="$WP_USER" --admin_password="$WP_PASS" --admin_email="$USER_MAIL" --allow-root
chown -R www-data:www-data /var/www/html
wp user create $USERWP $WPURL --user_pass=$USERPASS --role=contributor --allow-root
php-fpm7.4 --nodaemonize