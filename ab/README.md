Apache Bench
=============

A Docker build that installs Apache Bench. 


### Useage

First of all launch a web server;

```
docker run -d -p 80 -name web -v ./web:/var/www/html russmckendrick/nginx-php
```

then run Apache Bench against it;

```
docker run --link=web russmckendrick/ab ab -k -n 10000 -c 16 http://web/
```