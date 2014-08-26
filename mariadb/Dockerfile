### Dockerfile
#
#   See https://github.com/russmckendrick/docker/

FROM russmckendrick/base:latest
MAINTAINER Russ McKendrick <russ@media-glass.es>
RUN yum -y install mariadb mariadb-server && yum clean all
ADD mysql-listen.cnf /etc/my.cnf.d/mysql-listen.cnf
ENV MYSQL_HOME /etc
ADD run /usr/local/bin/
RUN chmod +x /usr/local/bin/run
CMD ["/usr/local/bin/run"]