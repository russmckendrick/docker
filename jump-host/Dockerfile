### Dockerfile
#
#   See https://github.com/russmckendrick/docker

FROM russmckendrick/base
MAINTAINER Russ McKendrick <russ@media-glass.es>
RUN yum -y install unzip python-pip openssh-server openssh-clients passwd
RUN echo "NETWORKING=yes" > /etc/sysconfig/network
RUN pip install "pip>=1.4,<1.5" --upgrade
RUN pip install supervisor
RUN ssh-keygen -q -N "" -t dsa -f /etc/ssh/ssh_host_dsa_key && ssh-keygen -q -N "" -t rsa -f /etc/ssh/ssh_host_rsa_key 
RUN sed -ri 's/UsePAM yes/UsePAM no/g' /etc/ssh/sshd_config
ADD supervisord.conf /etc/
ADD run /usr/local/bin/
RUN chmod +x /usr/local/bin/run
CMD ["/usr/local/bin/run"]