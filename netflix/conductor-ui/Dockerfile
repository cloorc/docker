FROM alpine:3.5

MAINTAINER 张仪 <wittcnezh@foxmail.coms>

RUN apk add --no-cache --update-cache curl unzip bash git nodejs

ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk
ENV PATH $JAVA_HOME/bin:$PATH

WORKDIR /opt

RUN git clone https://github.com/Netflix/conductor.git && \
    cd conductor/ui && \
    npm install && \
    cd .. && \
    mv ./ui /opt/ && \
    rm -rf conductor && \
    apk del git

WORKDIR /opt/ui

CMD ["gulp", "watch"]
