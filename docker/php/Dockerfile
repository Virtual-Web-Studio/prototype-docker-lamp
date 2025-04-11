FROM php:8.4-fpm-alpine

# Установка системных зависимостей и драйверов
RUN apk add --no-cache $PHPIZE_DEPS linux-headers mysql-client \
    && docker-php-ext-install pdo pdo_mysql \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug

# Настройка Xdebug
COPY ./xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini

WORKDIR /var/www/html
