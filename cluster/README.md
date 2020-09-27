Cluster Example
=============

[![](https://github.com/russmckendrick/docker/workflows/cluster/badge.svg)](https://github.com/users/russmckendrick/packages/container/package/cluster)

A container which runs NGINX and shows a page with the host name of the container it is being served from.

```
docker container run -d -p 80:80 ghcr.io/russmckendrick/cluster:latest
```
