### Dockerfile
#
#   See https://github.com/russmckendrick/docker/

FROM russmckendrick/base:latest
MAINTAINER Russ McKendrick <russ@media-glass.es>
ADD nginx.repo /etc/yum.repos.d/
RUN yum -y install nginx mariadb php php-fpm php-mysql php-pdo php-devel php-gd php-pecl-memcache php-pspell php-snmp php-xmlrpc php-xml && yum clean all
ADD default.conf /etc/nginx/conf.d/default.conf
RUN useradd webserver -u 666 && gpasswd -a webserver apache
RUN sed -i '/worker_processes  1;/a daemon off;' /etc/nginx/nginx.conf
RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer
ADD run /usr/local/bin/
RUN chmod +x /usr/local/bin/run
CMD ["/usr/local/bin/run"]