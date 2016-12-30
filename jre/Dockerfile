FROM soiff/minimal:latest

MAINTAINER 张仪 <wittcnezh@foxmail.coms>

ENV JAVA_VERSION_MAJOR=8 JAVA_VERSION_MINOR=111 JAVA_VERSION_BUILD=14 JAVA_PACKAGE=jre
ENV JRE_VERSION="${JAVA_PACKAGE}1.${JAVA_VERSION_MAJOR}.0_${JAVA_VERSION_MINOR}"
WORKDIR /opt
RUN curl -jksSLH "Cookie: oraclelicense=accept-securebackup-cookie" \
    "http://download.oracle.com/otn-pub/java/jdk/${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-b${JAVA_VERSION_BUILD}/${JAVA_PACKAGE}-${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-linux-x64.tar.gz" | tar -xzf - && \
    apk del curl ca-certificates && \
    rm /opt/${JRE_VERSION}/bin/jjs 2>/dev/null && \
    rm /opt/${JRE_VERSION}/bin/keytool 2>/dev/null && \
    rm /opt/${JRE_VERSION}/bin/orbd 2>/dev/null && \
    rm /opt/${JRE_VERSION}/bin/pack200 2>/dev/null && \
    rm /opt/${JRE_VERSION}/bin/policytool 2>/dev/null && \
    rm /opt/${JRE_VERSION}/bin/rmid 2>/dev/null && \
    rm /opt/${JRE_VERSION}/bin/rmiregistry 2>/dev/null && \
    rm /opt/${JRE_VERSION}/bin/servertool 2>/dev/null && \
    rm /opt/${JRE_VERSION}/bin/tnameserv 2>/dev/null && \
    rm /opt/${JRE_VERSION}/bin/unpack200 2>/dev/null && \
    rm /opt/${JRE_VERSION}/lib/ext/nashorn.jar 2>/dev/null && \
    rm /opt/${JRE_VERSION}/lib/jfr.jar 2>/dev/null && \
    rm -rf /opt/${JRE_VERSION}/lib/jfr 2>/dev/null && \
    rm -rf /opt/${JRE_VERSION}/lib/oblique-fonts 2>/dev/null && \
    rm -rf /tmp/* /var/cache/apk/* 2>/dev/null && \
    echo 'hosts: files mdns4_minimal [NOTFOUND=return] dns mdns4' >> /etc/nsswitch.conf

ENV JRE_HOME /opt/${JRE_VERSION}
ENV PATH $PATH:$JRE_HOME/bin

CMD ["java", "-version"]
