FROM centos:7

RUN yum install -y openssh openssh-server

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]