FROM centos:7

RUN yum install -y openssh

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]