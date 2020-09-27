### Dockerfile
#
#   See https://github.com/russmckendrick/docker

FROM ghcr.io/russmckendrick/base:latest

LABEL maintainer="Russ McKendrick <russ@mckendrick.io>"
LABEL org.opencontainers.image.source https://github.com/russmckendrick/docker
LABEL org.opencontainers.image.description "Example Cluster application container, see this containers GitHub repo for more info"

RUN apk add --update supervisor nginx && rm -rf /var/cache/apk/* && mkdir -p /var/www/html

COPY files/index.html files/swarm.png /var/www/html/
COPY files/start.sh /script/
COPY files/default.conf /etc/nginx/conf.d/
COPY files/nginx.conf /etc/nginx/nginx.conf
COPY files/supervisord.conf /etc/supervisord.conf

RUN chown -R nginx:nginx /var/www/html

EXPOSE 80/tcp

ENTRYPOINT ["supervisord"]
CMD ["-c","/etc/supervisord.conf"]