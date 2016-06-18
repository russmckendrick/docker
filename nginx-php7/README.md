NGINX & PHP7
=============

[![](https://badge.imagelayers.io/russmckendrick/nginx-php7:latest.svg)](https://imagelayers.io/?images=russmckendrick/nginx-php7:latest 'Get your own badge on imagelayers.io')

A Docker build which runs an Alpine Linux container with NGINX and PHP 7.

```
docker run -d -p 80 -v /home/containers/web:/var/www/html russmckendrick/nginx-php7
docker run -d -p 80 -v /home/containers/web:/var/www/html -e VIRTUAL_HOST=some.domain.com --link database:db russmckendrick/nginx-php
```