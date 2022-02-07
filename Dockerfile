#Apache server
FROM php:7.2-apache
COPY ./ports/ /etc/ports/
RUN cd /etc/apache2/ && rm -rf ports.conf && cp /etc/ports/port.txt /etc/apache2/ports.conf && cd /etc/apache2/sites-enabled/ && rm -rf 000-default.conf && cp /etc/ports/port2.txt /etc/apache2/sites-enabled/000-default.conf
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli && apt-get update && apt-get upgrade -y && apt-get install iputils-ping -y