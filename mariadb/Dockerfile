### Dockerfile
#
#   See https://github.com/russmckendrick/docker/

FROM russmckendrick/base:latest
MAINTAINER Russ McKendrick <russ@media-glass.es>
RUN /usr/bin/yum -y install mariadb mariadb-server
ADD mysql-listen.cnf /etc/my.cnf.d/mysql-listen.cnf
ENV MYSQL_HOME /etc
EXPOSE 3306
ADD run /usr/local/bin/
RUN chmod +x /usr/local/bin/run
CMD ["/usr/local/bin/run"]