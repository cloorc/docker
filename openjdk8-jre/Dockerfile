FROM alpine:3.5

MAINTAINER 张仪 <wittcnezh@foxmail.coms>

RUN apk add --no-cache --update-cache curl unzip bash openjdk8-jre openssh-server telnet

ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk
ENV PATH $JAVA_HOME/bin:$PATH

CMD ["java", "-version"]
