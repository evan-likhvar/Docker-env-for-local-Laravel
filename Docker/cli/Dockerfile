FROM php:8.3.3-cli

## Arguments defined in docker-compose.yml
#ARG user
#ARG uid

RUN apt-get update && apt-get install -y libmcrypt-dev mcrypt libzip-dev zip

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

RUN docker-php-ext-configure zip

RUN docker-php-ext-install pdo pdo_mysql

## Create system user to run Composer and Artisan Commands
#RUN useradd -G www-data,root -u $uid -d /home/$user $user
#RUN mkdir -p /home/$user/.composer && \
#    chown -R $user:$user /home/$user && \
RUN chmod 777 /var/www

WORKDIR /var/www

# Set the user
#USER $user
