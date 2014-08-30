Docker
=============

A repo to house my trusted Docker builds, see my [Docker Index Profile](https://index.docker.io/u/russmckendrick/) for more information.

## General Containers

- [Base](https://registry.hub.docker.com/u/russmckendrick/base/) - Base build for use with other Docker builds
- [NGINX Proxy](https://registry.hub.docker.com/u/russmckendrick/nginx-proxy/) - A reverse proxy container

## CentOS 7 LEMP Stack

- [NGINX](https://registry.hub.docker.com/u/russmckendrick/nginx/)
- [PHP 5.4 & PHP-FPM](https://registry.hub.docker.com/u/russmckendrick/php-fpm/)
- [MariaDB 5.5](https://registry.hub.docker.com/u/russmckendrick/mariadb/)


To run a stack you would run something like;

```
docker run -d -v /home/containers/database:/var/lib/mysql --name="database" russmckendrick/mariadb
docker run -d -v /home/containers/web:/var/www/html --name="php" --link database:db russmckendrick/php-fpm
docker run -d -p 80 -v /home/containers/web:/var/www/html -e VIRTUAL_HOST=some.domain.com --link php:php-fpm --name="nginx" russmckendrick/nginx
```

See [this terminal session](https://asciinema.org/a/11731) for a demo.