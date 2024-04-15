up:
	[ -f ".env" ] && echo '' || cat Docker/.env.docker >> .env
	docker-compose up -d

down:
	docker-compose down

build:
	docker-compose up --build -d

enter-fpm:
	docker exec -it php-fpm-dev bash

enter-cli:
	docker exec -it php-cli-dev bash

perm:
#	sudo chown ${USER}:${USER} bootstrap/cache -R
#	sudo chown ${USER}:${USER} storage -R
	docker exec -it php-cli-dev chmod -R 777 /var/www/storage

new-laravel:
	docker exec -it php-cli-dev composer create-project laravel/laravel new-app
	docker exec -it php-cli-dev cp -a new-app/. ./ && rm -r -f new-app/ && echo >> .env
	docker exec -it php-cli-dev composer install

migration:
	docker exec -it php-cli-dev php artisan migrate

