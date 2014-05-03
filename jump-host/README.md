Jump Host
=============

A Docker image, which runs just SSH, to be used as a jump host. You can set the root password by passing the `SERVER_ROOT_PASSWORD` as an environment variable;

```
docker run -d -p 222:22 -e SERVER_ROOT_PASSWORD=y0Urp455w0rd russmckendrick/jump-host
```

If you don't it will default to a fixed but random string.