FROM soiff/java:8u111

MAINTAINER 张仪 <wittcnezh@foxmail.com>

WORKDIR /opt

# Let's roll
RUN	echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    apk update && \
    apk upgrade && \
    apk add --update tzdata && \
    cp /usr/share/zoneinfo/${TIMEZONE} /etc/localtime && \
    echo "${TIMEZONE}" > /etc/timezone && \
    apk add --update zip unzip

RUN mkdir edas-config-center && \
    cd edas-config-center && \
    curl -skSL http://edas-public.oss-cn-hangzhou.aliyuncs.com/install_package/edas-config-center.zip | unzip -x

WORKDIR /opt/edas-config-center

CMD ["sh", "startup.sh"]
