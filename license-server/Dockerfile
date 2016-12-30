FROM alpine:3.4

MAINTAINER 张仪 <wittcnezh@foxmail.com>

ADD linux_amd64 /opt/linux_amd64

RUN chmod +x /opt/linux_amd64

EXPOSE 1017

ENTRYPOINT ["/opt/linux_amd64"]
