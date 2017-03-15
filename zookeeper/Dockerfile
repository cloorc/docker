FROM alpine:3.5

MAINTAINER 张仪 <wittcnezh@foxmail.coms>

RUN apk add --no-cache --update-cache curl bash openjdk8-jre

WORKDIR /opt/

RUN curl -skl http://apache.fayea.com/zookeeper/zookeeper-3.4.9/zookeeper-3.4.9.tar.gz|tar -xzf - && \
    mv /opt/zookeeper-3.4.9/conf/zoo_sample.cfg /opt/zookeeper-3.4.9/conf/zoo.cfg

WORKDIR /opt/zookeeper-3.4.9

ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk

CMD ["/opt/zookeeper-3.4.9/bin/zkServer.sh", "start-foreground"]
