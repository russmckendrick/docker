Consul
=============

[![](https://github.com/russmckendrick/docker/workflows/consul/badge.svg)](https://github.com/users/russmckendrick/packages/container/package/consul)

Run Consul either as a single node or cluster, built on an Alpine base image to keep it [tiny](https://media-glass.es/2016/02/01/tiny-docker-images/).

Launch a container configured to run as a single Consul node using the following;

```
docker container run -d -p "8400:8400" -p "8500:8500" -h "consul" ghcr.io/russmckendrick/consul:latest
```

This will launch the consul with the command below;

```
consul agent -dev -data-dir /data -server -bootstrap-expect 1 -client=0.0.0.0
```

If you would like to run a Consul cluster, then [see this blog post](https://media-glass.es/2016/02/27/consul-docker-cluster/) for full instructions.