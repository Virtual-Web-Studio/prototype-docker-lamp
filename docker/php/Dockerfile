FROM php:8.4-fpm-alpine

# Создание безопасного пользователя 'app'
RUN adduser -D -u 1000 -g 'app' app && mkdir -p /var/www/html && chown -R app:app /var/www/html

# UID/GID как аргументы сборки (по желанию)
ARG DOCKER_UID=1000
ARG DOCKER_GID=1000

# Установка системных пакетов и PHP-расширений
RUN apk add --no-cache $PHPIZE_DEPS linux-headers icu-dev mysql-client \
    && docker-php-ext-install pdo pdo_mysql mysqli intl opcache \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug

# Настройка Xdebug
COPY ./xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini

# Настройка опкеша напрямую
RUN echo "opcache.enable=1" >> /usr/local/etc/php/conf.d/docker-php-ext-opcache.ini && \
    echo "opcache.enable_cli=1" >> /usr/local/etc/php/conf.d/docker-php-ext-opcache.ini && \
    echo "opcache.memory_consumption=128" >> /usr/local/etc/php/conf.d/docker-php-ext-opcache.ini && \
    echo "opcache.interned_strings_buffer=8" >> /usr/local/etc/php/conf.d/docker-php-ext-opcache.ini && \
    echo "opcache.max_accelerated_files=4000" >> /usr/local/etc/php/conf.d/docker-php-ext-opcache.ini && \
    echo "opcache.validate_timestamps=1" >> /usr/local/etc/php/conf.d/docker-php-ext-opcache.ini && \
    echo "opcache.revalidate_freq=2" >> /usr/local/etc/php/conf.d/docker-php-ext-opcache.ini

# Рабочая директория
WORKDIR /var/www/html

# Переключаемся на безопасного пользователя
USER app
