FROM php:8.1-fpm

RUN docker-php-ext-install pdo pdo_mysql

WORKDIR /var/www/html

COPY . .

EXPOSE 9000

CMD ["php-fpm", "-F"]
