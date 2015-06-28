NGINX & HHVM
=============

A Docker build which runs a CentOS 7 container with NGINX and HHVM.

```
docker run -d -p 80 -v /home/containers/web:/var/www/html russmckendrick/nginx-hhvm
docker run -d -p 80 -v /home/containers/web:/var/www/html -e VIRTUAL_HOST=some.domain.com --link database:db russmckendrick/nginx-hhvm
```

## Notes

If you don't mount anything over `/var/www/html/` then you should a copy of a HHVMInfo file.

This container users a user called `webserver`, if you are mounting volumes please create a user on your host system using the following;

```
useradd webserver -u 666
```