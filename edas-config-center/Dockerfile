FROM soiff/jdk:8u111

MAINTAINER 张仪 <wittcnezh@foxmail.com>

WORKDIR /opt

# Let's roll
RUN apk add --update curl unzip

RUN mkdir edas-config-center && \
    cd edas-config-center && \
    curl -skSL http://edas-public.oss-cn-hangzhou.aliyuncs.com/install_package/edas-config-center.zip -o /tmp/tmp.zip && \
    unzip -x /tmp/tmp.zip && \
    rm -rf /tmp/*

WORKDIR /opt/edas-config-center

CMD ["/bin/sh", "startup.sh"]
