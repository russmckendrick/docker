### Dockerfile
#
#   See https://github.com/russmckendrick/docker/

FROM russmckendrick/base:latest
MAINTAINER Russ McKendrick <russ@mckendrick.io>

RUN yum -y install mariadb100u mariadb100u-server mariadb100u-common && yum clean all
RUN usermod -u 1000 mysql
ADD my.cnf /etc/my.cnf
ADD mysql-listen.cnf /etc/my.cnf.d/mysql-listen.cnf
ENV MYSQL_HOME /etc
ADD run /usr/local/bin/
ADD dump /usr/local/bin/
RUN chmod +x /usr/local/bin/run && chmod +x /usr/local/bin/dump
CMD ["/usr/local/bin/run"]