FROM index.tenxcloud.com/revolc/openjdk8-jre:latest

MAINTAINER 张仪 <wittcnezh@foxmail.coms>

WORKDIR /opt

RUN git clone https://github.com/Netflix/conductor.git && \
    pushd conductor && \
    ./gradlew shadowJar && \
    cp server/build/libs/conductor-server-*.jar /opt/ && \
    popd && \
    rm -rf conductor

CMD ["java", "-Dworkflow.elasticsearch.url=${ES_URL:-127.0.0.1:9300}", "-DloadSample=true", "-jar", "/opt/conductor-server-*.jar"]
