NGINX & PHP
=============

A Docker build which runs a CentOS 7 container with NGINX and PHP 5.6.

- `CUSTOM_CONF` = If `yes` then the default.conf file will be removed and a sym link to `/var/www/html/.docker/nginx.conf` created.
- `RUN_COMPOSER` = If `yes` then composer install will be run as the `webserver` user in `/var/www/html/`
- `PHP_POOL` = The Pool name to use, the default is `[www]`

```
docker run -d -p 80 -v /home/containers/web:/var/www/html russmckendrick/nginx-php
docker run -d -p 80 -v /home/containers/web:/var/www/html -e VIRTUAL_HOST=some.domain.com --link database:db russmckendrick/nginx-php
```

## Notes

This cotainer users a user called `webserver`, if you are mounting volumes please create a user on your host system using the following;

```
useradd webserver -u 666
```

[![](https://badge.imagelayers.io/russmckendrick/nginx-php:latest.svg)](https://imagelayers.io/?images=russmckendrick/nginx-php:latest 'Get your own badge on imagelayers.io')