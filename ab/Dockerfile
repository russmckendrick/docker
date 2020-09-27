### Dockerfile
#
#   See https://github.com/russmckendrick/docker

FROM ghcr.io/russmckendrick/base:latest

LABEL org.opencontainers.image.authors "Russ McKendrick <russ@mckendrick.io>"
LABEL org.opencontainers.image.source "https://github.com/russmckendrick/docker"
LABEL org.opencontainers.image.description "Apache Bench container, see this containers GitHub repo for more info"

RUN apk add  -U apache2-utils
RUN rm -rf /var/cache/apk/*
