FROM php:7.2-fpm as php72
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \ 
&& docker-php-ext-install pdo_mysql \
&& docker-php-ext-install mbstring \
&& docker-php-ext-install curl \
&& docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
&& docker-php-ext-install gd

ADD ./ext/swoole.tar.gz /usr/src/php/ext
RUN docker-php-ext-install swoole

