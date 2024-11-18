FROM alpine AS builder

RUN apk add --no-cache --update ca-certificates wget && \
    wget --no-check-certificate -O /opt/instantclient-basic.zip https://download.oracle.com/otn_software/linux/instantclient/2360000/instantclient-basic-linux.x64-23.6.0.24.10.zip && \
    cd /opt && \
    unzip instantclient-basic.zip && \
    rm -vf instantclient-basic.zip

FROM busybox:stable

COPY --from=builder /opt /opt

