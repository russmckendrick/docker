Apache Bench
=============

[![](https://images.microbadger.com/badges/image/russmckendrick/ab.svg)](https://microbadger.com/images/russmckendrick/ab "Get your own image badge on microbadger.com")

A Docker build that installs Apache Bench. 


### Useage

First of all launch a web server;

- `docker run -d -p 80 -name web -v ./web:/var/www/html russmckendrick/nginx-php`

then run Apache Bench against it;

- `docker run --link=web russmckendrick/ab ab -k -n 10000 -c 16 http://web/`