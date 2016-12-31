FROM soiff/jre:8u111

MAINTAINER 张仪 <wittcnezh@foxmail.coms>

RUN apk add --no-cache --update-cache curl

WORKDIR /opt

ENV RELEASE_TAOBAO_TOMCAT "http://edas-public.oss-cn-hangzhou.aliyuncs.com/install_package/tomcat/taobao-tomcat-7.0.59.tgz?spm=5176.doc44158.2.1.uj170t&file=taobao-tomcat-7.0.59.tgz"
ENV RELEASE_TAOBAO_HSF "http://edas-public.oss-cn-hangzhou.aliyuncs.com/install_package/pandora/unauth/taobao-hsf.tgz?spm=5176.doc44158.2.2.uj170t&file=taobao-hsf.tgz"

# Uncompress to /opt directory so we get /opt/taobao-hsf.sar folder
RUN curl -skSL "${RELEASE_TAOBAO_TOMCAT}" | tar -xzf - && \
    curl -skSL "${RELEASE_TAOBAO_HSF}" | tar -xzf - && \
    echo "export JAVA_OPTS=\"\${JAVA_OPTS} -Dpandora.location=/opt/taobao-hsf.sar\"">/opt/taobao-tomcat-7.0.59/bin/setenv.sh

ENV CATALINA_HOME /opt/taobao-tomcat-7.0.59

WORKDIR ${CATALINA_HOME}/bin

EXPOSE 8080

CMD [ "/bin/sh", "catalina.sh", "run" ]
