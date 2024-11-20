FROM alpine AS builder

RUN apk add --no-cache --update ca-certificates wget && \
    wget --no-check-certificate -O /opt/instantclient-basic.zip https://download.oracle.com/otn_software/linux/instantclient/2116000/instantclient-basic-linux.x64-21.16.0.0.0dbru.zip && \
    cd /opt && \
    unzip instantclient-basic.zip && \
    rm -vf instantclient-basic.zip

FROM busybox:stable

COPY --from=builder /opt /opt

