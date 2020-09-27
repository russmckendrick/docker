PHP7
=============

[![](https://github.com/russmckendrick/docker/workflows/php7/badge.svg)](https://github.com/users/russmckendrick/packages/container/package/php7)

A Docker build which runs an Alpine Linux container with PHP 7 and Apache.

```
docker run -d -p 80 ghcr.io/russmckendrick/nginx-php7:latest
docker run -d -p 80 -v /home/containers/web:/var/www/html ghcr.io/russmckendrick/nginx-php7:latest
docker run -d -p 80 -v /home/containers/web:/var/www/html -e VIRTUAL_HOST=php7.dev.mckendrick.io ghcr.io/russmckendrick/nginx-php7:latest
```