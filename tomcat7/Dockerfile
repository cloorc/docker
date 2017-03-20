FROM index.tenxcloud.com/revolc/openjdk8-jre:latest

MAINTAINER 张仪 <wittcnezh@foxmail.coms>

RUN mkdir /opt && \
    curl -skl http://mirror.bit.edu.cn/apache/tomcat/tomcat-7/v7.0.76/bin/apache-tomcat-7.0.76.tar.gz|tar -C /opt -xzf - && \
    mv -v /opt/apache-tomcat-7.0.76 /opt/apache-tomcat && \
    rm -rf /opt/apache-tomcat/webapps/*

WORKDIR /opt/apache-tomcat

ENV CATALINA_HOME /opt/apache-tomcat

EXPOSE 8080

CMD ["/opt/apache-tomcat/bin/catalina.sh", "run"]
