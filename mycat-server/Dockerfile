FROM openjdk:8-jre
Maintainer 张仪
ADD Mycat-server-*.tar.gz /opt/
ENV MYCAT_HOME=/opt/mycat
ADD start.sh /opt/
RUN chmod +x /opt/start.sh
EXPOSE 8066 9066
CMD [ "/opt/start.sh", "console" ]
