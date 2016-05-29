Jenkins 2
=============

[![](https://badge.imagelayers.io/russmckendrick/jenkins:latest.svg)](https://imagelayers.io/?images=russmckendrick/jenkins:latest 'Get your own badge on imagelayers.io')

Run the latest Jenkins, built on an Alpine base image to keep it [tiny](https://media-glass.es/2016/02/01/tiny-docker-images/).

```
docker run -v /var/run/docker.sock:/var/run/docker.sock \
    -v $(which docker):/usr/local/bin/docker \
    -p 5000:5000 -p 8080:8080 \
    -v /data/jenkins:/var/jenkins \
    --privileged \
    --restart always \
    russmckendrick/jenkins
```