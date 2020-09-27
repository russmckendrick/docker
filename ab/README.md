Apache Bench
=============

[![](https://github.com/russmckendrick/docker/workflows/ab/badge.svg)](https://github.com/users/russmckendrick/packages/container/package/ab)

A Docker build that installs Apache Bench. 


### Useage

First of all launch a web server;

- `docker run -d -p 80 -name web -v ./web:/var/www/html ghcr.io/russmckendrick/nginx-php`

then run Apache Bench against it;

- `docker run --link=web ghcr.io/russmckendrick/ab ab -k -n 10000 -c 16 http://web/`