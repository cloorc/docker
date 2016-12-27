FROM soiff/jdk:8u111

MAINTAINER 张仪 <wittcnezh@foxmail.coms>

WORKDIR /opt

ENV DEPLOY_DIR taobao-tomcat-7.0.59/deploy
ENV RELEASE_TAOBAO_TOMCAT "http://edas-public.oss-cn-hangzhou.aliyuncs.com/install_package/tomcat/taobao-tomcat-7.0.59.tgz?spm=5176.doc44158.2.1.uj170t&file=taobao-tomcat-7.0.59.tgz"
ENV RELEASE_TAOBAO_HSF "http://edas-public.oss-cn-hangzhou.aliyuncs.com/install_package/pandora/unauth/taobao-hsf.tgz?spm=5176.doc44158.2.2.uj170t&file=taobao-hsf.tgz"

RUN curl -skSL "${RELEASE_TAOBAO_TOMCAT}" | tar -xzf - && \
    curl -skSL "${RELEASE_TAOBAO_HSF}" | tar -C ${DEPLOY_DIR} -xzf -

ENV CATALINA_HOME /opt/taobao-tomcat-7.0.59

WORKDIR ${CATALINA_HOME}/bin

CMD [ "/bin/sh", "catalina.sh", "run" ]
