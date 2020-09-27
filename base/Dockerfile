### Dockerfile
#
#   See https://github.com/russmckendrick/docker

FROM alpine:latest
LABEL maintainer="Russ McKendrick <russ@mckendrick.io>"

RUN apk update && apk upgrade && \
	apk add ca-certificates bash && \
	rm -rf /var/cache/apk/*

