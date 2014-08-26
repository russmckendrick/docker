### Dockerfile
#
#   See https://github.com/russmckendrick/docker/

FROM russmckendrick/base:latest
MAINTAINER Russ McKendrick <russ@media-glass.es>
ADD nginx.repo /etc/yum.repos.d/
RUN yum -y install nginx && yum clean all
ADD default.conf /etc/nginx/conf.d/default.conf
ADD info.php /var/www/html/index.php
RUN sed -i '/worker_processes  1;/a daemon off;' /etc/nginx/nginx.conf
ENV PHP-FPM-HOST php-fpm
ENV PHP-FPM-PORT 9000
CMD ["nginx"]