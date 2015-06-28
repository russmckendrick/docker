Docker
=============

A repo to house my trusted Docker builds, see my [Docker Index Profile](https://index.docker.io/u/russmckendrick/) for more information. Have a read of [my blog posts on Docker](https://media-glass.es/tag/docker/) for more information.

## General Containers

- [Base](https://registry.hub.docker.com/u/russmckendrick/base/) - Base build for use with other Docker builds
- [NGINX Proxy](https://registry.hub.docker.com/u/russmckendrick/nginx-proxy/) - A reverse proxy container

## CentOS 7 LEMP Stack

- [NGINX & PHP 5.6](https://registry.hub.docker.com/u/russmckendrick/nginx-php/) - An all in-one NGINX / PHP container
- [MariaDB 10](https://registry.hub.docker.com/u/russmckendrick/mariadb/) - A MariaDB 5.5 container, best used with other containers
- [NGINX & HHVM](https://registry.hub.docker.com/u/russmckendrick/nginx-hhvm/) - Runs NGINX & HHVM, see [this blog post for more into](https://media-glass.es/2014/11/09/experiment-docker-hhvm/)

To run a stack you would run something like;

```
docker run -d -v /home/containers/database:/var/lib/mysql --name="db" russmckendrick/mariadb
docker run -d -v /home/containers/web:/var/www/html -e VIRTUAL_HOST=some.domain.com --link db:db --name="web" russmckendrick/nginx-php
```

or use the following `docker-compose.yml` file;

```
web:
  image: reconnix/nginx-php
  volumes:
    - ./web:/var/www/html/
  ports:
    - 80
  environment:
    PHP_POOL: mywebsite
    VIRTUAL_HOST: mywebsite.domain.com
  links:
    - db:db
db:
  image: russmckendrick/mariadb
  volumes:
    - ./database:/var/lib/mysql
  ports:
    - 3306
  environment:
    MYSQL_ROOT_PASSWORD: some-mysql-root-password
    MYSQL_DATABASE: your-database-name
    MYSQL_USER: your-database-user
    MYSQL_PASSWORD: your-database-password
```