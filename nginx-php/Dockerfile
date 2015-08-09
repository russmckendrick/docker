### Dockerfile

FROM russmckendrick/base:latest
MAINTAINER Russ McKendrick <russ@mckendrick.io>
ADD nginx.repo /etc/yum.repos.d/
RUN yum -y install yum-plugin-replace
RUN yum -y install nginx mariadb php56u php56u-common php56u-fpm php56u-process php56u-pecl-jsonc php56u-cli php56u-mysqlnd php56u-pdo php56u-devel php56u-gd php56u-pspell php56u-snmp php56u-xmlrpc php56u-xml php56u-pear php56u-mcrypt php56u-mbstring php56u-opcache python-setuptools postfix gcc make && yum clean all
RUN easy_install supervisor
RUN useradd webserver -u 666 && gpasswd -a webserver apache
ADD conf-supervisord.conf /etc/supervisord.conf
ADD nginx.conf /etc/nginx/nginx.conf
ADD default.conf /etc/nginx/conf.d/default.conf
RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer
ADD run /usr/local/bin/
RUN chmod +x /usr/local/bin/run
RUN yum -y remove gcc cpp glibc-devel glibc-headers kernel-headers libmpc mpfr gcc && yum clean all
CMD ["/usr/local/bin/run"]