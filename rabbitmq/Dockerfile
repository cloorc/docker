FROM alpine:v3.5

MAINTAINER 张仪 <wittcnezh@foxmail.com>

RUN apk add --no-cache --update-cache erlang curl && \
  [ ! -e /opt ] && mkdir -p /opt && cd /opt \
  curl -skSL http://www.rabbitmq.com/releases/rabbitmq-server/v3.6.10/rabbitmq-server-generic-unix-3.6.10.tar.xz|tar -xvf && \
  mv rabbitmq_server-3.6.10 rabbitmq

EXPOSE 5672

CMD ["/opt/rabbitmq/sbin/rabbitmq-server"]
