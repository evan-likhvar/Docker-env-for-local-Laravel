FROM php:8.3.3-fpm

## Arguments defined in docker-compose.yml
#ARG user
#ARG uid

RUN apt-get update \
    && apt-get install -y libmcrypt-dev mcrypt \
    && docker-php-ext-install pdo pdo_mysql

## Create system user to run Composer and Artisan Commands
#RUN useradd -G www-data,root -u $uid -d /home/$user $user
#RUN mkdir -p /home/$user/.composer && \
#    chown -R $user:$user /home/$user && \
RUN chmod 777 /var/www

# Set the user
#USER $user

WORKDIR /var/www

RUN pecl install xdebug \
    && docker-php-ext-enable xdebug
