FROM openjdk:8-jre
Maintainer 张仪
ADD mycat.tgz /opt/
RUN mkdir /opt/mycat/logs/
ENV MYCAT_HOME=/opt/mycat
EXPOSE 8066 9066
CMD [ "/opt/mycat/bin/mycat", "console" ]
