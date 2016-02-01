### Dockerfile

FROM russmckendrick/base:latest
MAINTAINER Russ McKendrick <russ@mckendrick.io>

ENV TERM dumb

RUN apk add --update \
		supervisor nginx php php-fpm \
		php-zlib php-mcrypt php-openssl \
		php-gd php-xml php-json && \ 
	rm -rf /var/cache/apk/* && \
	mkdir /tmp/nginx && \
	mkdir -p /var/www/html && \
	echo "<?php phpinfo(); ?>" > /var/www/html/index.php && \
	chown -R nginx:nginx /var/www/html && \
	sed -i 's/memory_limit = .*/memory_limit = 768M/' /etc/php/php.ini && \
	sed -i 's/post_max_size = .*/post_max_size = 50M/' /etc/php/php.ini && \
	echo 'date.timezone = "Europe/London"' >> /etc/php/php.ini && \
	sed -i '/^user/c \user = nginx' /etc/php/php-fpm.conf && \
	sed -i '/^group/c \group = nginx' /etc/php/php-fpm.conf && \
	sed -i 's/^listen.allowed_clients/;listen.allowed_clients/' /etc/php/php-fpm.conf

COPY files/default.conf /etc/nginx/conf.d/
COPY files/nginx.conf /etc/nginx/nginx.conf
COPY files/supervisord.conf /etc/supervisord.conf

EXPOSE 80 443
CMD ["supervisord"]