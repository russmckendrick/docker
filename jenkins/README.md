Jenkins
=============

[![](https://github.com/russmckendrick/docker/workflows/jenkins/badge.svg)](https://github.com/users/russmckendrick/packages/container/package/jenkins)

Run the latest Jenkins, built on an Alpine base image to keep it [tiny](https://media-glass.es/2016/02/01/tiny-docker-images/).

```
docker run -v /var/run/docker.sock:/var/run/docker.sock \
    -v $(which docker):/usr/local/bin/docker \
    -p 5000:5000 -p 8080:8080 \
    -v ./jenkins:/var/jenkins \
    --privileged \
    --restart always \
    ghcr.io/russmckendrick/jenkins:latest
```