FROM registry.cn-hangzhou.aliyuncs.com/revolc/openjdk8-jre:latest

MAINTAINER 张仪 <wittcnezh@foxmail.coms>

RUN mkdir /opt && \
    curl -skl http://mirror.bit.edu.cn/apache/kafka/0.10.2.0/kafka_2.11-0.10.2.0.tgz|tar -C /opt -xzf - && \
    mv -v /opt/kafka_* /opt/kafka && \
    sed -i "s/#delete.topic.enable=true/delete.topic.enable=true/g" /opt/kafka/config/server.properties && \
    grep -n "^exec"|awk -F: '{print $1}'|while read n; do sed -i "${n}ised -i \"s/zookeeper.connect=/zookeeper.connect=${ZOOKEEPER:-localhost:2181}/g\" /opt/kafka/config/server.properties" /opt/kafka/bin/kafka-server-start.sh; done

WORKDIR /opt/kafka

ENV ZOOKEEPER ${ZOOKEEPER:-localhost:2181}

EXPOSE 9092

CMD ["/opt/kafka/bin/kafka-server-start.sh", "/opt/kafka/config/server.properties"]
