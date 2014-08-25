### Dockerfile
#
#   See https://github.com/russmckendrick/mariadb

FROM russmckendrick/base:latest
MAINTAINER Russ McKendrick <russ@media-glass.es>
RUN /usr/bin/yum -y install python-setuptools mysql mysql-server
RUN /usr/bin/echo "NETWORKING=yes" > /etc/sysconfig/network
RUN /usr/bin/easy_install pip
RUN /usr/bin/pip install supervisor
ADD supervisord.conf /etc/
ADD run /usr/local/bin/
RUN chmod +x /usr/local/bin/run
CMD ["/usr/local/bin/run"]