### Dockerfile
#
#   See https://github.com/russmckendrick/docker

FROM ghcr.io/russmckendrick/base:latest

LABEL maintainer="Russ McKendrick <russ@mckendrick.io>"
LABEL org.opencontainers.image.source https://github.com/russmckendrick/docker
LABEL org.opencontainers.image.description "PHP7 container, see this containers GitHub repo for more info"

ENV PHPVERSION 7

ENV TERM dumb

RUN apk add --update apache2 php${PHPVERSION}-apache2 php${PHPVERSION} && \
        rm -rf /var/cache/apk/* && \
        rm -rf /var/www/localhost/htdocs/index.html && \
        echo "<?php phpinfo(); ?>" > /var/www/localhost/htdocs/index.php && \
        chmod 755 /var/www/localhost/htdocs/index.php

EXPOSE 80/tcp

ENTRYPOINT ["httpd"]
CMD ["-D", "FOREGROUND"]