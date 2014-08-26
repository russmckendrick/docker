PHP-FPM
=============

A Docker build which runs a CentOS 7 conatiner with just PHP 5.4 with PHP-FPM.

- `PHP_POOL` = The Pool name to use, the default is `[www]`
- `PHP_PORT` = The port number to bind PHP-FPM to, the default os `9000`
- `PHP_USER` = The user & group to run PHP as, the default is `apache`

```
docker run -d -p 9000:9000 russmckendrick/php-fpm
docker run -d -p 9000:9000 -e PHP_POOL=testing --name="testing" russmckendrick/php-fpm
docker run -d -p 9000:9000 -e PHP_PORT=9001 -e PHP_USER=testing -e PHP_POOL=testing --name="testing" russmckendrick/php-fpm
```