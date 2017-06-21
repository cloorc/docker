FROM registry.cn-hangzhou.aliyuncs.com/revolc/openjdk8-jre:latest

MAINTAINER 张仪 <wittcnezh@foxmail.coms>

RUN mkdir /opt && \
    curl -o /opt/zipkin.jar -skl 'https://search.maven.org/remote_content?g=io.zipkin.java&a=zipkin-server&v=LATEST&c=exec' && \
    echo -e "#!/usr/bin/env bash\njava \${JAVA_OPTS} -jar /opt/zipkin.jar" > /opt/executor.sh && \
    chmod +x /opt/executor.sh

WORKDIR /opt

ENV JAVA_OPTS ${JAVA_OPTS}

EXPOSE 9092

CMD ["/opt/executor.sh"]
