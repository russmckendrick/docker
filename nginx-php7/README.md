NGINX & PHP
=============

[![](https://badge.imagelayers.io/russmckendrick/nginx-php:latest.svg)](https://imagelayers.io/?images=russmckendrick/nginx-php:latest 'Get your own badge on imagelayers.io')

A Docker build which runs an Alpine Linux container with NGINX and PHP 5.6.

```
docker run -d -p 80 -v /home/containers/web:/var/www/html russmckendrick/nginx-php
docker run -d -p 80 -v /home/containers/web:/var/www/html -e VIRTUAL_HOST=some.domain.com --link database:db russmckendrick/nginx-php
```