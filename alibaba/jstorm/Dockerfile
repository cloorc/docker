FROM index.tenxcloud.com/revolc/openjdk8-jre:latest

RUN apk add --no-cache --update-cache python && \
  mkdir /home/admin/ && \
  cd /home/admin/ && \
  curl -skSo jstorm-2.2.1.zip -L https://github.com/alibaba/jstorm/releases/download/2.2.1/jstorm-2.2.1.zip && \
  unzip jstorm-2.2.1.zip && \
  mv jstorm-2.2.1 jstorm && \
  rm -vf jstorm-2.2.1.zip

WORKDIR /home/admin/jstorm

ENV JSTORM_HOME /home/admin/jstorm
ENV JSTORM_CONF_DIR ${JSTORM_HOME}conf
ENV PATH ${JAVA_HOME}/bin:${JSTORM_HOME}/bin:${PATH}

CMD [ "/home/admin/jstorm/bin/jstorm", "supervisor", "-c", "storm.zookeeper.servers=[\"zookeeper.io\"]" ]
