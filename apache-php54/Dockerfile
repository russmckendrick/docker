### Dockerfile
#
#   See https://github.com/russmckendrick/docker

FROM russmckendrick/base
MAINTAINER Russ McKendrick <russ@media-glass.es>
RUN yum -y install httpd php54 php54-fpm php54-mysql php54-pdo php54-devel php54-gd php54-pecl-memcache php54-pspell php54-snmp php54-xmlrpc php54-xml python-pip
RUN echo "NETWORKING=yes" > /etc/sysconfig/network
RUN pip install "pip>=1.4,<1.5" --upgrade
RUN pip install supervisor
ADD index.php /var/www/html/
ADD supervisord.conf /etc/
EXPOSE 80
CMD ["supervisord", "-n"]