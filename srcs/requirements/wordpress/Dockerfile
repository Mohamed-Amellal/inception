FROM debian:bullseye

WORKDIR /var/www/html
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get -y install mariadb-client wget
RUN  apt-get -y install php-fpm php-mysql
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && chmod +x wp-cli.phar && mv wp-cli.phar /usr/bin/wp

COPY config/www.conf /etc/php/7.4/fpm/pool.d/www.conf
COPY /tools/wp_setup.sh /wp_setup.sh
CMD ["sh" , "/wp_setup.sh" ]