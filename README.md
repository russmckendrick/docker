Docker
=============

A repo to house my GitHub Container Registry trusted Docker image builds, see my [Github Profile](https://github.com/russmckendrick/) for more information. Have a read of [my blog posts on Docker](https://www.mediaglasses.blog/tag/docker/) for more information.

## General Containers

- [Base](https://github.com/users/russmckendrick/packages/container/package/base/) - Base build for use with other Docker builds
- [AB](https://github.com/users/russmckendrick/packages/container/package/ab) - A container to run Apache Bench
- [Consul](https://github.com/users/russmckendrick/packages/container/package/consul) - Run a single or clustered Consul install
- [Jenkins](https://github.com/users/russmckendrick/packages/container/package/jenkins) - Run a Jenkins container

## Stacks

- [PHP 5.6](https://github.com/users/russmckendrick/packages/container/package/php5/) - An all in-one PHP 5.6 and Apache container
- [PHP 7](https://github.com/users/russmckendrick/packages/container/package/php7/) - An all in-one PHP 7 and Apache container
- [MariaDB](https://github.com/users/russmckendrick/packages/container/package/mariadb/) - A MariaDB 10 container, best used with other containers
- [NGINX](https://github.com/users/russmckendrick/packages/container/package/nginx/) - Just NGINX

To run a stack you would run something like;

```
docker run -d -v /home/containers/database:/var/lib/mysql --name="db" ghcr.io/russmckendrick/mariadb
docker run -d -v /home/containers/web:/var/www/html -e VIRTUAL_HOST=app.dev.mckendrick.io --link db:db --name="web" ghcr.io/russmckendrick/nginx-php7
```
For more information:
https://docs.docker.com/
