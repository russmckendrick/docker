### Dockerfile
#
#   See https://github.com/russmckendrick/docker

FROM russmckendrick/jump-host
MAINTAINER Russ McKendrick <russ@media-glass.es>
RUN yum -y install python-pip mysql56u mysql56u-server
RUN echo "NETWORKING=yes" > /etc/sysconfig/network
RUN pip install "pip>=1.4,<1.5" --upgrade
RUN pip install supervisor
ADD supervisord.conf /etc/
ADD run /usr/local/bin/
RUN chmod +x /usr/local/bin/run
CMD ["/usr/local/bin/run"]
