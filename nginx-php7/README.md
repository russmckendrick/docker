NGINX & PHP7
=============

[![](https://images.microbadger.com/badges/image/russmckendrick/nginx-php7.svg)](https://microbadger.com/images/russmckendrick/nginx-php7 "Get your own image badge on microbadger.com")

A Docker build which runs an Alpine Linux container with NGINX and PHP 7.

```
docker run -d -p 80 -v /home/containers/web:/var/www/html russmckendrick/nginx-php7
docker run -d -p 80 -v /home/containers/web:/var/www/html -e VIRTUAL_HOST=php7.dev.mckendrick.io russmckendrick/nginx-php7
```