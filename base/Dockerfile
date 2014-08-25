### Dockerfile
#
#   See https://github.com/russmckendrick/docker

FROM centos:latest
MAINTAINER Russ McKendrick <russ@media-glass.es>
RUN ["/usr/bin/rpm", "--import", "/etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7"]
RUN ["/usr/bin/yum", "-y", "update"]
RUN ["/usr/bin/yum", "-y", "install", "yum-priorities", "vim-enhanced"]