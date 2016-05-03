FROM php:7.0-apache

RUN apt-get update && apt-get install -y zlib1g-dev libicu-dev libpq-dev \
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-install pdo_pgsql