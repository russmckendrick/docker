Docker
=============

A repo to house my trusted Docker builds, see my [Docker Hub Profile](https://hub.docker.com/u/russmckendrick/) for more information. Have a read of [my blog posts on Docker](https://media-glass.es/tags/docker/) for more information.

## General Containers

- [Base](https://registry.hub.docker.com/u/russmckendrick/base/) - Base build for use with other Docker builds
- [NGINX Proxy](https://registry.hub.docker.com/u/russmckendrick/nginx-proxy/) - A reverse proxy container
- [AB](https://hub.docker.com/r/russmckendrick/ab/) - A container to run Apache Bench
- [Consul](https://hub.docker.com/r/russmckendrick/consul/) - Run a single or clustered Consul install
- [Jenkins](https://hub.docker.com/r/russmckendrick/jenkins/) - Run a Jenkins 2 container

## Stacks

- [NGINX & PHP 5.6](https://registry.hub.docker.com/u/russmckendrick/nginx-php/) - An all in-one NGINX / PHP 5.6 container
- [NGINX & PHP 7](https://registry.hub.docker.com/u/russmckendrick/nginx-php7/) - An all in-one NGINX / PHP 7 container
- [MariaDB](https://registry.hub.docker.com/u/russmckendrick/mariadb/) - A MariaDB 10 container, best used with other containers
- [NGINX](https://registry.hub.docker.com/u/russmckendrick/nginx/) - Just NGINX

To run a stack you would run something like;

```
docker run -d -v /home/containers/database:/var/lib/mysql --name="db" russmckendrick/mariadb
docker run -d -v /home/containers/web:/var/www/html -e VIRTUAL_HOST=app.dev.mckendrick.io --link db:db --name="web" russmckendrick/nginx-php7
```