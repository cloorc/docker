FROM alpine:3.19

MAINTAINER Cloorc <wittcnezh@foxmail.com>

RUN apk add --no-cache --update-cache nodejs npm yarn

ENTRYPOINT [ "/usr/bin/node" ]
