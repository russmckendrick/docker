PHP5
=============

[![](https://github.com/russmckendrick/docker/workflows/php5/badge.svg)](https://github.com/users/russmckendrick/packages/container/package/php5)

A Docker build which runs an Alpine Linux container with PHP 5 and Apache.

```
docker run -d -p 80 ghcr.io/russmckendrick/php5:latest
docker run -d -p 80 -v /home/containers/web:/var/www/html ghcr.io/russmckendrick/php5:latest
docker run -d -p 80 -v /home/containers/web:/var/www/html -e VIRTUAL_HOST=php7.dev.mckendrick.io ghcr.io/russmckendrick/php5:latest
```