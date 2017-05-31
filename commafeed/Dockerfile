FROM alpine:3.5

MAINTAINER 张仪 <wittcnezh@foxmail.coms>

RUN apk add --no-cache --update-cache curl bash openjdk8-jre && test ! -e /opt && mkdir -vp /opt

ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk
ENV PATH $JAVA_HOME/bin:$PATH

WORKDIR /opt

RUN curl -o commafeed.jar -skSL https://github.com/Athou/commafeed/releases/download/2.3.0/commafeed.jar && \
	curl -o config.yml -skSL https://raw.githubusercontent.com/Athou/commafeed/2.3.0/config.yml.example

EXPOSE 8082
EXPOSE 8084

CMD [ "java", "-Djava.net.preferIPv4Stack=true", "-jar", "/opt/commafeed.jar", "server", "/opt/config.yml" ]
