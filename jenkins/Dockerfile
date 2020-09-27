### Dockerfile
#
#   See https://github.com/russmckendrick/docker

FROM ghcr.io/russmckendrick/base:latest

LABEL maintainer="Russ McKendrick <russ@mckendrick.io>"
LABEL org.opencontainers.image.source https://github.com/russmckendrick/docker
LABEL org.opencontainers.image.description "Jenkins container, see this containers GitHub repo for more info"

ENV JENKINS_HOME /var/jenkins
ENV JENKINS_OPTS ""
ENV JENKINS_VERSION "latest"

WORKDIR /opt
RUN apk add --update git openjdk8-jre ttf-dejavu \
    && rm -rf /var/cache/apk/* \
    && wget http://mirrors.jenkins-ci.org/war/${JENKINS_VERSION}/jenkins.war
VOLUME  ${JENKINS_HOME}
EXPOSE 8080
EXPOSE 50000

CMD ["java", "-jar", "/opt/jenkins.war", "$JENKINS_OPTS"]