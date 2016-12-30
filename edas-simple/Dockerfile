FROM docker.tesir.top/ci/taobao-tomcat:v1.1

RUN curl -skSL https://raw.githubusercontent.com/soiff/scripts/master/bash/hsfconfig.sh -o /root/hsfconfig.sh && \
    chmod +x /root/hsfconfig.sh

ENTRYPOINT ["/root/hsfconfig.sh"]
