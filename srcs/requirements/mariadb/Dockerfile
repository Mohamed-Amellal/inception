FROM debian:bullseye


RUN		apt-get update && apt-get -y install mariadb-server && apt-get install -y  mysql-common 

COPY	./tools/db.sh /tmp

# RUN		sed -i "s|CREATE DATABASE IF NOT EXISTS DB_NAME;|CREATE DATABASE IF NOT EXISTS $DB_NAME;|" /db.sql
# RUN		sed -i "s|CREATE USER IF NOT EXISTS 'DB_USR'@'%' identified by 'DB_PASS';|CREATE USER IF NOT EXISTS '$DB_USR'@'%' identified by '$DB_PASS';|" /db.sql
# RUN		sed -i "s|GRANT ALL PRIVILEGES ON DB_NAME.* TO 'DB_USR'@'%';|GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USR'@'%';|" /db.sql
# RUN		sed -i "s|ALTER USER 'root'@'localhost' IDENTIFIED BY 'DB_ROOT_PASS';|ALTER USER 'root'@'localhost' IDENTIFIED BY '$DB_ROOT_PASS';|" /db.sql

# RUN cat /db.sql

COPY	./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

RUN chmod +x /tmp/db.sh
EXPOSE 3306
ENTRYPOINT [ "/tmp/db.sh" ]             
CMD [ "mariadbd"]              