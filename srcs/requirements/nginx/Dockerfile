FROM debian:bullseye

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install nginx -y
RUN apt-get install openssl -y

COPY    conf/Default /
RUN     mv Default /etc/nginx/sites-available/default

RUN openssl req -new -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -subj "/L=M" -out /etc/ssl/certs/server.crt -keyout /etc/ssl/private/server.key

CMD [ "nginx", "-g", "daemon off;" ]