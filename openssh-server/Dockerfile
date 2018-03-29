FROM centos:7

RUN yum install -y openssh openssh-server tar wget && \
  wget -o /tmp/jdk-8u161-linux-x64.rpm --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u161-b12/2f38c3b165be4555a1fa6e98c45e0808/jdk-8u161-linux-x64.rpm && \
  yum localinstall jdk-8u161-linux-x64.rpm && \
  rm /tmp/jdk-8u161-linux-x64.rpm && \
  wget -o /tmp/apache-maven-3.5.3-bin.tar.gz http://www-eu.apache.org/dist/maven/maven-3/3.5.3/binaries/apache-maven-3.5.3-bin.tar.gz && \
  cd /opt && tar -xvzf /tmp/apache-maven-3.5.3-bin.tar.gz && \
  rm /tmp/apache-maven-3.5.3-bin.tar.gz

ENV PATH $PATH:/opt/apache-maven-3.5.3/bin

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]