FROM kurron/docker-azul-jdk-8-build:latest

MAINTAINER Ron Kurr <kurr@kurron.org>

ENV WEBIDE_JDK /usr/lib/jvm/zulu-8-amd64

ENTRYPOINT ["/opt/WebStorm-181.5281.31/bin/webstorm.sh"]

USER root

ADD https://download.jetbrains.com/webstorm/WebStorm-2018.1.5.tar.gz /opt

RUN rm -rf /opt/WebStorm-181.5281.31/jre64

USER powerless
