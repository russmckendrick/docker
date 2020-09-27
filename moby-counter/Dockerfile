### Dockerfile
#
#   See https://github.com/russmckendrick/docker

FROM ghcr.io/russmckendrick/nodejs:latest

LABEL maintainer="Russ McKendrick <russ@mckendrick.io>"
LABEL org.opencontainers.image.source https://github.com/russmckendrick/docker
LABEL org.opencontainers.image.description "Moby Counter container, see this containers GitHub repo for more info"

ADD . /srv/app
WORKDIR /srv/app
RUN npm install
EXPOSE 80
ENTRYPOINT ["node", "index.js"]