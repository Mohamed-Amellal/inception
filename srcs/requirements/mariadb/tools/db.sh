#!/bin/sh

if [ ! -f /var/lib/check ];then 
 
service mariadb start

touch /var/lib/check

mysql -u root -e "CREATE DATABASE IF NOT EXISTS $DB_NAME;"
mysql -u root -e "CREATE USER IF NOT EXISTS '$DB_USR'@'%' identified by '$DB_PASS';"
mysql -u root -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USR'@'%';"
mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$DB_ROOT_PASS';"
mysql -u root -$DB_ROOT_PASS -e "FLUSH PRIVILEGES;"

fi
# service mariadb stop

exec "$@"