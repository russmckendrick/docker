### Dockerfile
#
#   See https://github.com/russmckendrick/docker/

FROM centos:latest
MAINTAINER Russ McKendrick <russ@mckendrick.io>

ADD nginx.repo /etc/yum.repos.d/
RUN yum -y install nginx tar wget && yum clean all && sed -i '/worker_processes  1;/a daemon off;' /etc/nginx/nginx.conf && sed -i '/keepalive_timeout  65;/a server_names_hash_bucket_size 64;' /etc/nginx/nginx.conf && mkdir /app

ENV DOCKER_GEN_VERSION 0.3.9
RUN wget https://github.com/jwilder/docker-gen/releases/download/$DOCKER_GEN_VERSION/docker-gen-linux-amd64-$DOCKER_GEN_VERSION.tar.gz && tar -C /usr/local/bin -xvzf docker-gen-linux-amd64-$DOCKER_GEN_VERSION.tar.gz && rm /docker-gen-linux-amd64-$DOCKER_GEN_VERSION.tar.gz

RUN wget -P /usr/local/bin https://godist.herokuapp.com/projects/ddollar/forego/releases/current/linux-amd64/forego && chmod u+x /usr/local/bin/forego

WORKDIR /app
COPY . /app

EXPOSE 80
ENV DOCKER_HOST unix:///tmp/docker.sock
VOLUME ["/etc/nginx/certs"]

CMD ["forego", "start", "-r"]