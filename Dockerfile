FROM php:5.5-apache
RUN apt-get -qy update && apt-get -qy install php5-mhash php5-curl libmcrypt-dev libpng12-dev
RUN docker-php-ext-install mcrypt mysql gd pdo_mysql
COPY . /var/www/html/
WORKDIR /var/www/html
RUN chown -R www-data .
RUN find . -type d -exec chmod 700 {} \;
RUN find . -type f -exec chmod 600 {} \;

