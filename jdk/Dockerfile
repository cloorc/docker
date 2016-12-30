FROM soiff/minimal:latest

MAINTAINER 张仪 <wittcnezh@foxmail.coms>

ENV JAVA_VERSION_MAJOR=8 JAVA_VERSION_MINOR=111 JAVA_VERSION_BUILD=14 JAVA_PACKAGE=jdk
ENV JDK_VERSION="jdk1.${JAVA_VERSION_MAJOR}.0_${JAVA_VERSION_MINOR}"
WORKDIR /opt
RUN curl -jksSLH "Cookie: oraclelicense=accept-securebackup-cookie" \
    "http://download.oracle.com/otn-pub/java/jdk/${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-b${JAVA_VERSION_BUILD}/${JAVA_PACKAGE}-${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-linux-x64.tar.gz" | tar -xzf - && \
    apk del curl ca-certificates && \
    rm /opt/${JDK_VERSION}/jre/bin/jjs 2>/dev/null && \
    rm /opt/${JDK_VERSION}/jre/bin/keytool 2>/dev/null && \
    rm /opt/${JDK_VERSION}/jre/bin/orbd 2>/dev/null && \
    rm /opt/${JDK_VERSION}/jre/bin/pack200 2>/dev/null && \
    rm /opt/${JDK_VERSION}/jre/bin/policytool 2>/dev/null && \
    rm /opt/${JDK_VERSION}/jre/bin/rmid 2>/dev/null && \
    rm /opt/${JDK_VERSION}/jre/bin/rmiregistry 2>/dev/null && \
    rm /opt/${JDK_VERSION}/jre/bin/servertool 2>/dev/null && \
    rm /opt/${JDK_VERSION}/jre/bin/tnameserv 2>/dev/null && \
    rm /opt/${JDK_VERSION}/jre/bin/unpack200 2>/dev/null && \
    rm /opt/${JDK_VERSION}/jre/lib/ext/nashorn.jar 2>/dev/null && \
    rm /opt/${JDK_VERSION}/jre/lib/jfr.jar 2>/dev/null && \
    rm -rf /opt/${JDK_VERSION}/jre/lib/jfr 2>/dev/null && \
    rm -rf /opt/${JDK_VERSION}/jre/lib/oblique-fonts 2>/dev/null && \
    rm -rf /tmp/* /var/cache/apk/* 2>/dev/null && \
    echo 'hosts: files mdns4_minimal [NOTFOUND=return] dns mdns4' >> /etc/nsswitch.conf

ENV JAVA_HOME /opt/${JDK_VERSION}
ENV PATH $PATH:$JAVA_HOME/bin

CMD ["java", "-version"]

