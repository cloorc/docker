FROM docker:latest

MAINTAINER 张仪 <wittcnezh@foxmail.com>

RUN apk add --no-cache --update-cache \
  bash git which iproute2 openssh openssh-server openjdk8 && \
  ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N "" && \
  ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key -N "" && \
  ssh-keygen -t ed25519 -f /etc/ssh/ssh_host_ed25519 -N ""

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]