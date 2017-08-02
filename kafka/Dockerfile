FROM registry.cn-hangzhou.aliyuncs.com/revolc/openjdk8-jre:latest

MAINTAINER 张仪 <wittcnezh@foxmail.coms>

ENV ZOOKEEPER ${ZOOKEEPER}
ENV KLISTENER ${KLISTENER}

RUN mkdir /opt && \
    curl -skl http://mirror.bit.edu.cn/apache/kafka/0.10.2.0/kafka_2.11-0.10.2.0.tgz|tar -C /opt -xzf - && \
    mv -v /opt/kafka_* /opt/kafka && \
    sed -i "s/#delete.topic.enable=true/delete.topic.enable=true/g" /opt/kafka/config/server.properties && \
    grep -n "^exec" /opt/kafka/bin/kafka-server-start.sh|awk -F: '{print $1}'|while read n; do sed -i "${n}ised -i \"s/zookeeper.connect=.*/zookeeper.connect=\${ZOOKEEPER}/g\" /opt/kafka/config/server.properties" /opt/kafka/bin/kafka-server-start.sh; done && \
    grep -n "^exec" /opt/kafka/bin/kafka-server-start.sh|awk -F: '{print $1}'|while read n; do sed -i "${n}ised -i \"s/#listeners=/listeners=/g\" /opt/kafka/config/server.properties" /opt/kafka/bin/kafka-server-start.sh; done && \
    grep -n "^exec" /opt/kafka/bin/kafka-server-start.sh|awk -F: '{print $1}'|while read n; do sed -i "${n}ised -i \"s/#advertised.listeners=.*/advertised.listeners=PLAINTEXT:\\\\/\\\\/\${KLISTENER}/g\" /opt/kafka/config/server.properties" /opt/kafka/bin/kafka-server-start.sh; done

WORKDIR /opt/kafka

EXPOSE 9092

CMD ["/opt/kafka/bin/kafka-server-start.sh", "/opt/kafka/config/server.properties"]
