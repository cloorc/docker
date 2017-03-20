FROM index.tenxcloud.com/revolc/openjdk8-jre:latest

MAINTAINER 张仪 <wittcnezh@foxmail.coms>

RUN mkdir /opt && \
    curl -skl http://mirror.bit.edu.cn/apache/zookeeper/zookeeper-3.4.9/zookeeper-3.4.9.tar.gz|tar -C /opt -xzf - && \
    mv /opt/zookeeper-3.4.9/conf/zoo_sample.cfg /opt/zookeeper-3.4.9/conf/zoo.cfg

WORKDIR /opt/zookeeper-3.4.9

EXPOSE 2181

CMD ["/opt/zookeeper-3.4.9/bin/zkServer.sh", "start-foreground"]
