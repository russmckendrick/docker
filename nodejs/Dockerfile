### Dockerfile
#
#   See https://github.com/russmckendrick/docker

FROM ghcr.io/russmckendrick/base:latest

LABEL maintainer="Russ McKendrick <russ@mckendrick.io>"
LABEL org.opencontainers.image.source https://github.com/russmckendrick/docker
LABEL org.opencontainers.image.description "NodeJS container, see this containers GitHub repo for more info"

ENV TERM dumb

ENV NPM_CONFIG_GLOBALCONFIG /etc/npmrc
COPY npmrc /etc/npmrc

RUN apk add --update \
	nodejs npm && \ 
	rm -rf /var/cache/apk/* && \
	npm -g install npm && \
    npm cache clean --force
