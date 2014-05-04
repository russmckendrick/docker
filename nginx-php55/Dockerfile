### Dockerfile
#
#   See https://github.com/russmckendrick/docker

FROM russmckendrick/base
MAINTAINER Russ McKendrick <russ@media-glass.es>
ADD nginx-release.repo /etc/yum.repos.d/
RUN yum -y install nginx php55u php55u-mysqlnd php55u-devel php55u-gd php55u-pecl-memcache php55u-pspell php55u-snmp php55u-xmlrpc php55u-xml php55u-fpm python-pip
RUN echo "NETWORKING=yes" > /etc/sysconfig/network
RUN pip install "pip>=1.4,<1.5" --upgrade
RUN pip install supervisor
ADD default.conf /etc/nginx/conf.d/
ADD index.php /var/www/html/
ADD supervisord.conf /etc/
EXPOSE 80
CMD ["supervisord", "-n"]