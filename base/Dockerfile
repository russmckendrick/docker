### Dockerfile
#
#   See https://github.com/russmckendrick/docker

FROM centos:latest
MAINTAINER Russ McKendrick <russ@mckendrick.io>
RUN rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7
RUN yum -y install epel-release deltarpm https://dl.iuscommunity.org/pub/ius/stable/CentOS/7/x86_64/ius-release-1.0-14.ius.centos7.noarch.rpm && yum -y update && yum -y install yum-priorities vim-enhanced git && yum clean all