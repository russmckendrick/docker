### Dockerfile
#
#   See https://github.com/russmckendrick/docker/

FROM russmckendrick/base:latest
MAINTAINER Russ McKendrick <russ@media-glass.es>
ADD nginx.repo /etc/yum.repos.d/
RUN yum -y install nginx && yum clean all
RUN sed -i '/worker_processes  1;/a daemon off;' /etc/nginx/nginx.conf
RUN sed -i 's/# server_names_hash_bucket/server_names_hash_bucket/g' /etc/nginx/nginx.conf

RUN mkdir /app
WORKDIR /app
ADD . /app

RUN curl -o /usr/local/bin/forego https://godist.herokuapp.com/projects/ddollar/forego/releases/current/linux-amd64/forego
RUN chmod u+x /usr/local/bin/forego

RUN curl -o docker-gen-linux-amd64-0.3.2.tar.gz https://github.com/jwilder/docker-gen/releases/download/0.3.2/docker-gen-linux-amd64-0.3.2.tar.gz
RUN tar xvzf docker-gen-linux-amd64-0.3.2.tar.gz

EXPOSE 80
ENV DOCKER_HOST unix:///tmp/docker.sock

CMD ["forego", "start", "-r"]
