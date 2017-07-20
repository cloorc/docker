FROM alpine:3.5

MAINTAINER 张仪 <wittcnezh@foxmail.com>

RUN apk add --no-cache --update-cache rabbitmq-server

EXPOSE 5672

CMD ["/usr/sbin/rabbitmq-server"]
