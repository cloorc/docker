FROM alpine:3.5

MAINTAINER 张仪 <wittcnezh@foxmail.coms>

RUN apk add --no-cache --update-cache curl unzip bash openjdk8 git

ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk
ENV PATH $JAVA_HOME/bin:$PATH

WORKDIR /opt

RUN git clone https://github.com/Netflix/conductor.git && \
    cd conductor && \
    ./gradlew shadowJar && \
    cp server/build/libs/conductor-server-*.jar /opt/conductor-server.jar && \
    cd .. && \
    rm -rf conductor && \
    apk remove git

CMD ["java", "-Dworkflow.elasticsearch.url=${ES_URL:-127.0.0.1:9300}", "-DloadSample=true", "-jar", "/opt/conductor-server.jar"]
