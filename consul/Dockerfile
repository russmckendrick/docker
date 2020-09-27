### Dockerfile
#
#   See https://github.com/russmckendrick/docker

FROM ghcr.io/russmckendrick/base:latest

LABEL maintainer="Russ McKendrick <russ@mckendrick.io>"
LABEL org.opencontainers.image.source https://github.com/russmckendrick/docker
LABEL org.opencontainers.image.description "Consul continer, see this containers GitHub repo for more info"

ENV CONSUL_VERSION 1.8.4
ENV CONSUL_SHA256 0d74525ee101254f1cca436356e8aee51247d460b56fc2b4f7faef8a6853141f
RUN  apk add --update wget \
  && wget -O consul.zip https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip \
  && echo "$CONSUL_SHA256 *consul.zip" | sha256sum -c - \
  && unzip consul.zip \
  && mv consul /bin/ \
  && rm -rf consul.zip \
  && rm -rf /tmp/* /var/cache/apk/*
EXPOSE 8300 8301 8301/udp 8302 8302/udp 8400 8500 8600 8600/udp
VOLUME [ "/data" ]
ENTRYPOINT [ "/bin/consul" ]
CMD [ "agent", "-dev", "-data-dir", "/data", "-server", "-bootstrap-expect", "1", "-client=0.0.0.0"]