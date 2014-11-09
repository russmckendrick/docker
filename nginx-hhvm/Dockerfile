### Dockerfile
#
#   See https://github.com/russmckendrick/docker/

FROM russmckendrick/base:latest
MAINTAINER Russ McKendrick <russ@mckendrick.io>

ADD nginx.repo /etc/yum.repos.d/
ADD hhvm.repo /etc/yum.repos.d/
RUN yum -y install yum-plugin-replace
RUN yum -y install nginx mariadb hhvm python-setuptools postfix gcc make && yum clean all
RUN easy_install pip && pip install "pip>=1.4,<1.5" --upgrade && pip install supervisor
RUN groupadd apache && useradd webserver -u 666 && gpasswd -a webserver apache && mkdir -p /var/www/html/ && chown -R webserver:webserver /var/www/html/
ADD index.php /var/www/html/
ADD conf-supervisord.conf /etc/supervisord.conf
ADD default.conf /etc/nginx/conf.d/default.conf
ADD run /usr/local/bin/
RUN chmod +x /usr/local/bin/run
CMD ["/usr/local/bin/run"]