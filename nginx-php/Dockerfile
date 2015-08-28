### Dockerfile

FROM russmckendrick/base:latest
MAINTAINER Russ McKendrick <russ@mckendrick.io>
ADD nginx.repo /etc/yum.repos.d/
RUN yum -y install nginx mariadb php56u php56u-common php56u-fpm php56u-process php56u-pecl-jsonc php56u-cli php56u-mysqlnd php56u-pdo php56u-gd php56u-pspell php56u-snmp php56u-xmlrpc php56u-xml php56u-pear php56u-mcrypt php56u-mbstring php56u-opcache python-setuptools && yum clean all && easy_install supervisor && useradd webserver -u 666 && gpasswd -a webserver apache && yum clean all
ADD conf-supervisord.conf /etc/supervisord.conf
ADD nginx.conf /etc/nginx/nginx.conf
ADD default.conf /etc/nginx/conf.d/default.conf
ADD run /usr/local/bin/
RUN chmod +x /usr/local/bin/run
CMD ["/usr/local/bin/run"]