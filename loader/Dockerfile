FROM alpine:3.6

MAINTAINER 张仪 <wittcnezh@foxmail.coms>

RUN apk add --no-cache --update-cache wget && \
  wget --no-check-certificate https://download.docker.com/win/stable/Docker%20for%20Windows%20Installer.exe

CMD ["bash", "-version"]
