<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400" alt="Laravel Logo"></a></p>

## 1. Copy repository to local computer as ZIP archive.
## 2. Set DB params in Docker/.env.docker
- DB_STORAGE_PATH=db_dev - DB directory name in parent directory of current project 
- DB_DATABASE=dev        - DB name
- DB_USERNAME=dev        - DB user
- DB_PASSWORD=dev        - user's password
- MYSQL_ROOT_PASSWORD=dev_root - root user password (it needed for container building)
## 3. Run command "make up" to start containers
## 4. Run once "make new-laravel" to install new Laravel application.
After installation you have to set DB params into .env according Docker/.env.docker
* DB_CONNECTION=mysql
* DB_HOST=mySQL80-dev
* DB_PORT=3306
* DB_DATABASE=dev
* DB_USERNAME=dev
* DB_PASSWORD=dev

For your IDE you have to use port 3307 for DB. You can change DB host name and db port in docker-compose.yml 