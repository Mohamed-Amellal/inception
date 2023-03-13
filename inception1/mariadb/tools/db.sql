CREATE DATABASE IF NOT EXISTS $DB_NAME;
CREATE USER IF NOT EXISTS '$DB_USR'@'%' identified by '$DB_PASS';
GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USR'@'%';
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY '$DB_ROOT_PASS';