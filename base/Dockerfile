### Dockerfile
#
#   See https://github.com/russmckendrick/docker-base

FROM centos
MAINTAINER Russ McKendrick <russ@media-glass.es>
RUN yum -y install http://www.mirrorservice.org/sites/dl.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm http://dl.iuscommunity.org/pub/ius/stable/CentOS/6/i386/ius-release-1.0-11.ius.centos6.noarch.rpm
RUN yum -y update
RUN yum -y install yum-priorities vim-enhanced