FROM index.tenxcloud.com/revolc/openjdk8-jre:latest

MAINTAINER 张仪 <wittcnezh@foxmail.com>

WORKDIR /opt

# Let's roll
RUN apk add --update curl unzip

RUN curl -skSL http://edas-public.oss-cn-hangzhou.aliyuncs.com/install_package/edas-config-center.zip -o /tmp/tmp.zip && \
    unzip -x /tmp/tmp.zip && \
    rm -rf /tmp/* && \
    sed -i "s/^\(\s*\)nohup \([^>]\+\).*$/\1\2/g" edas-config-center/startup.sh && \
    sed -i "s/'java version'/'openjdk version'/g" edas-config-center/startup.sh

WORKDIR /opt/edas-config-center

EXPOSE 8080 9600

ENTRYPOINT ["/bin/sh", "startup.sh"]
