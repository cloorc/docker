FROM openjdk:8-jre
Maintainer 张仪
ADD mycat.tgz /opt/
ADD start.sh /opt/
RUN chmod +x /opt/start.sh
RUN mkdir /opt/mycat/logs/
ENV MYCAT_HOME=/opt/mycat
EXPOSE 3306
CMD [ "/opt/start.sh", "console" ]
