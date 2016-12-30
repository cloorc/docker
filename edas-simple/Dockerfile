FROM index.tenxcloud.com/revolc/edas:latest

RUN curl -skSL https://raw.githubusercontent.com/soiff/scripts/master/bash/hsfconfig.sh -o /root/hsfconfig.sh && \
    chmod +x /root/hsfconfig.sh

ENTRYPOINT ["/root/hsfconfig.sh"]
