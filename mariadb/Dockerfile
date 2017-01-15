FROM alpine:3.5

MAINTAINER 张仪 <wittcnezh@#foxmail.com>

RUN apk add --no-cache --update mariadb

ENTRYPOINT ["/usr/share/mysql/mysqld_multi.server", "--console"]