NGINX & PHP
=============

[![](https://images.microbadger.com/badges/image/russmckendrick/nginx-php.svg)](https://microbadger.com/images/russmckendrick/nginx-php "Get your own image badge on microbadger.com")

A Docker build which runs an Alpine Linux container with NGINX and PHP 5.6.

```
docker run -d -p 80 -v /home/containers/web:/var/www/html russmckendrick/nginx-php
docker run -d -p 80 -v /home/containers/web:/var/www/html -e VIRTUAL_HOST=php56.dev.mckendrick.io russmckendrick/nginx-php
```