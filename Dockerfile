FROM php:7.0-apache

RUN apt-get update && apt-get install -y zlib1g-dev libicu-dev libpq-dev \
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-install pdo_pgsql

#my apache configurations
COPY config/apache2.conf /etc/apache2/apache2.conf

#can only copy to folders below /var/www/html, those above is physically in /src/