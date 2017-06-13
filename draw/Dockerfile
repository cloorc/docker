FROM index.tenxcloud.com/revolc/tomcat:7.0.76

MAINTAINER 张仪 <wittcnezh@foxmail.coms>

RUN apk add --no-cache --update-cache wget && \
  rm -rvf /opt/apache-tomcat/webapps/* && \
  wget -O /opt/apache-tomcat/webapps/ROOT.war https://github.com/jgraph/draw.io/releases/download/v6.7.8/draw.war