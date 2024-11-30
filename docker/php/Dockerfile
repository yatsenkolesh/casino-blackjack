FROM php:8.3-fpm
RUN apt-get update -y && apt-get install -y openssl zip unzip git
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN apt-get update && apt-get install -y \
        libonig-dev \
        libxml2-dev \
        && docker-php-ext-install pdo mbstring pdo_mysql mysqli

COPY . /app


WORKDIR /app

RUN composer install

EXPOSE 9000
