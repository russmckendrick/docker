NGINX-Proxy
=============

A Docker build which runs a CentOS 7 container with NGINX and [docker-gen](https://github.com/jwilder/docker-gen)

```
docker run -d -p 80:80 -v /var/run/docker.sock:/tmp/docker.sock -t proxy
```

and then launch your container with the `VIRTUAL_HOST` environment variable;

```
docker run -p 80 -e VIRTUAL_HOST=some.domain.com -t ...
```

This is based on following by Jason Wilder ....

- [http://jasonwilder.com/blog/2014/03/25/automated-nginx-reverse-proxy-for-docker/](http://jasonwilder.com/blog/2014/03/25/automated-nginx-reverse-proxy-for-docker/)
- [https://github.com/jwilder/nginx-proxy](https://github.com/jwilder/nginx-proxy)

.... the only reason why I didn't use the Docker `jwilder/nginx-proxy` container was because I wanted to build it on top of my own base image, and also [I am a operating system snob](https://media-glass.es/2014/08/03/operating-system-snob/) :smirk: