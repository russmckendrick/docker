### Dockerfile
#
#   See https://github.com/russmckendrick/docker

FROM centos:latest
MAINTAINER Russ McKendrick <russ@media-glass.es>
RUN rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7
yum -y update && yum -y install yum-priorities vim-enhanced && yum clean all