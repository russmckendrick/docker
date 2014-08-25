### Dockerfile
#
#   See https://github.com/russmckendrick/mariadb

FROM russmckendrick/base:latest
MAINTAINER Russ McKendrick <russ@media-glass.es>
RUN /usr/bin/yum -y install mariadb mariadb-server
RUN /usr/bin/echo "NETWORKING=yes" > /etc/sysconfig/network
ADD mysql-listen.cnf /etc/my.cnf.d/mysql-listen.cnf
ADD run /usr/local/bin/
RUN chmod +x q
CMD ["/usr/local/bin/run"]