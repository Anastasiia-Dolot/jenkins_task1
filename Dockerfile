#Apache server
FROM php:7.2-apache
COPY ./ports/ /etc/ports/
RUN cd /etc/apache2/ && rm -rf ports.conf && cp /etc/ports/port.txt /etc/apache2/ports.conf && cd /etc/apache2/sites-enabled/ && rm -rf 000-default.conf && cp /etc/ports/port2.txt /etc/apache2/sites-enabled/000-default.conf
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli && apt-get update && apt-get upgrade -y && apt-get install iputils-ping -y
 


#Write a docker-compose for https://github.com/FaztWeb/php-mysql-crud which:
#   - run a web server in one container               +
#   - run the database in another container           +
#   - uses a bridge network                           +
#   - Apache port must be not 80                      +
#
# Will be a plus:
#  + images are published in dockerhub and tagged                                          +
#  + ports in compose file are parameterized
#  + database contents should be preserved when removing the docker-compose stack          +
#  + use .ENV file for local or confidential variables (username, database password, etc.) +