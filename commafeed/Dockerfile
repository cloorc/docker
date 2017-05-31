FROM index.tenxcloud.com/revolc/openjdk8-jre:latest

MAINTAINER 张仪 <wittcnezh@foxmail.coms>

RUN test ! -e /opt && mkdir -vp /opt

WORKDIR /opt

RUN curl -o commafeed.jar -skSL https://github.com/Athou/commafeed/releases/download/2.3.0/commafeed.jar && \
	curl -o config.yml -skSL https://raw.githubusercontent.com/Athou/commafeed/2.3.0/config.yml.example

EXPOSE 8082
EXPOSE 8084

CMD [ "java", "-Djava.net.preferIPv4Stack=true", "-jar", "/opt/commafeed.jar", "server", "/opt/config.yml" ]
