up:
	#cat Docker/.env.docker >> .env
	docker-compose --env-file Docker/.env.docker --env-file .env up -d

down:
	docker-compose down

build:
	docker-compose up --build -d

enter-fpm:
	docker exec -it dev-php-fpm bash

enter-cli:
	docker exec -it dev-php-cli bash

perm:
#	sudo chown ${USER}:${USER} bootstrap/cache -R
#	sudo chown ${USER}:${USER} storage -R
	docker exec -it dev-php-cli chmod -R 777 /var/www/storage

new-laravel:
	docker exec -it dev-php-cli composer create-project laravel/laravel new-app
	docker exec -it dev-php-cli cp -a new-app/. ./ && rm -r -f new-app/ && echo >> .env
	#cat Docker/.env.docker >> .env
	docker exec -it dev-php-cli composer install

migration:
	docker exec -it dev-php-cli php artisan migrate

