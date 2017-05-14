FROM index.tenxcloud.com/revolc/openjdk8-jre:latest

RUN apk add --no-cache --update-cache python && \
  mkdir /home/admin/ && \
  cd /home/admin/ && \
  curl -skSL https://github.com/alibaba/jstorm/releases/download/2.2.1/jstorm-2.2.1.zip|unzip && \
  mv jstorm-2.2.1 jstorm

WORKDIR /home/admin/jstorm

ENV JSTORM_HOME /home/admin/jstorm
ENV JSTORM_CONF_DIR ${JSTORM_HOME}conf
ENV PATH ${JAVA_HOME}/bin:${JSTORM_HOME}/bin:${PATH}

CMD [ "/home/admin/jstorm/bin/jstorm", "supervisor", "-c", "storm.zookeeper.servers=[\"zookeeper.io\"]" ]
