### Dockerfile

FROM russmckendrick/base:latest
MAINTAINER Russ McKendrick <russ@mckendrick.io>
RUN yum -y install httpd-tools && yum clean all
CMD ["/usr/bin/ab"]