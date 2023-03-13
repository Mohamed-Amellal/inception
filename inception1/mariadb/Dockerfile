FROM debian:bullseye


RUN		apt-get update && apt-get -y install mariadb-server && apt-get install -y  mysql-common 

COPY	./tools/db.sql /
COPY	./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

RUN service mariadb start && mariadb -u root -p < db.sql
EXPOSE 3306
CMD [ "mariadbd-safe"]              