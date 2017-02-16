FROM alpine:3.5

MAINTAINER 张仪 <wittcnezh@foxmail.coms>

RUN apk add --no-cache --update-cache bash git nodejs

WORKDIR /opt

RUN git clone https://github.com/Netflix/conductor.git && \
    cd conductor/ui && \
    npm install -g gulp && \
    npm install && \
    cd .. && \
    mv ui /opt/ && \
    cd .. && \
    rm -rf conductor && \
    apk del git

WORKDIR /opt/ui

# env WEBSITE_HOSTNAME 127.0.0.1:8080

CMD ["/usr/bin/gulp", "serve"]
