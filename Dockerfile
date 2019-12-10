FROM php:7.2-apache
COPY httpd.conf /usr/local/apache2/conf/httpd.conf

RUN apt-get update && apt-get install -y --fix-missing git zip unzip
RUN docker-php-ext-install mysqli pdo pdo_mysql
    
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer