### Dockerfile
#
#   See https://github.com/russmckendrick/docker/

FROM russmckendrick/base:latest
MAINTAINER Russ McKendrick <russ@media-glass.es>
RUN /usr/bin/yum -y install php php-fpm php-mysql php-pdo php-devel php-gd php-pecl-memcache php-pspell php-snmp php-xmlrpc php-xml
ADD run /usr/local/bin/
RUN chmod +x /usr/local/bin/run
CMD ["/usr/local/bin/run"]