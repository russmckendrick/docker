### Dockerfile
#
#   See https://github.com/russmckendrick/docker

FROM ghcr.io/russmckendrick/base:latest

LABEL maintainer="Russ McKendrick <russ@mckendrick.io>"
LABEL org.opencontainers.image.source https://github.com/russmckendrick/docker
LABEL org.opencontainers.image.description "Metric beat container, see this containers GitHub repo for more info"

ARG VERSION=7.9.2
WORKDIR /metricbeat
ENTRYPOINT [ "/metricbeat/metricbeat" ]
CMD [ "-help" ]
RUN apk update && apk add ca-certificates openssl && update-ca-certificates && \
    wget -O- https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-${VERSION}-linux-x86_64.tar.gz | tar xz && \
    mv metricbeat-${VERSION}-linux-x86_64/* . && rm -rf metricbeat-${VERSION}-linux-x86_64 /var/cache/apk/*