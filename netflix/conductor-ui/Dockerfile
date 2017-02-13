FROM alpine:3.5

MAINTAINER 张仪 <wittcnezh@foxmail.coms>

RUN apk add --no-cache --update-cache curl unzip bash git nodejs

ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk
ENV PATH $JAVA_HOME/bin:$PATH

WORKDIR /opt

RUN git clone https://github.com/Netflix/conductor.git && \
    cd conductor/ui && \
    npm install -g && \
    cd .. && \
    mv ui /opt/ && \
    cd .. && \
    rm -rf conductor && \
    apk del git

WORKDIR /opt/ui

# env WEBSITE_HOSTNAME 127.0.0.1:8080

CMD ["/opt/ui/node_modules/.bin/gulp", "serve"]
