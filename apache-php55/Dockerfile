### Dockerfile
#
#   See https://github.com/russmckendrick/docker

FROM russmckendrick/base
MAINTAINER Russ McKendrick <russ@media-glass.es>
RUN yum -y install httpd git php55u php55u-mysqlnd php55u-devel php55u-gd php55u-pecl-memcache php55u-pspell php55u-snmp php55u-xmlrpc php55u-xml python-pip
RUN echo "NETWORKING=yes" > /etc/sysconfig/network
RUN pip install "pip>=1.4,<1.5" --upgrade
RUN pip install supervisor
ADD index.php /var/www/html/
ADD supervisord.conf /etc/
EXPOSE 80
CMD ["supervisord", "-n"]