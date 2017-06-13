FROM index.tenxcloud.com/revolc/tomcat:7.0.76

MAINTAINER 张仪 <wittcnezh@foxmail.coms>
RUN apk add --no-cache --update-cache wget openjdk8-jre && \
    mkdir /opt && \
    curl -skl http://mirror.bit.edu.cn/apache/tomcat/tomcat-7/v7.0.76/bin/apache-tomcat-7.0.76.tar.gz|tar -C /opt -xzf - && \
    mv -v /opt/apache-tomcat-7.0.76 /opt/apache-tomcat && \
    rm -rvf /opt/apache-tomcat/webapps/* && \
    wget -O /opt/apache-tomcat/webapps/ROOT.war https://github.com/jgraph/draw.io/releases/download/v6.7.8/draw.war

WORKDIR /opt/apache-tomcat

ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk
ENV PATH $JAVA_HOME/bin:$PATH
ENV CATALINA_HOME /opt/apache-tomcat

EXPOSE 8080

CMD ["/opt/apache-tomcat/bin/catalina.sh", "run"]