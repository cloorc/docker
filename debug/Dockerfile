FROM alpine:3.20

LABEL AUTHOR="Cloorc" EMAIL="<wittcnezh@foxmail.coms>"

RUN apk add --no-cache --update-cache \
    bash \
    tcpdump netcat-openbsd \
    iputils-ping inetutils-telnet tcptraceroute \
    curl wget \
    base64 \
    openssl openssh \
    tar gzip bzip2 && \
    rm -rf /var/cache/apk/*

ENV LANG=en_US.UTF-8
