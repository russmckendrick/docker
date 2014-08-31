NGINX
=============

A Docker build which runs a CentOS 7 container with NGINX and PHP 5.4.

- `SERVER_CONF` = If `yes` then the default.conf file will be removed and a sym link to `/var/www/html/.docker/nginx.conf` created.
- `USECOMPOSER` = If `yes` then composer install will be run as the `webserver` user
- `PHP_POOL` = The Pool name to use, the default is `[www]`

```
docker run -d -p 80:80 -v /home/containers/web:/var/www/html web
```