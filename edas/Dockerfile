FROM soiff/jdk:8u111

MAINTAINER 张仪 <wittcnezh@foxmail.coms>

WORKDIR /opt

RUN curl -skSL http://edas-public.oss-cn-hangzhou.aliyuncs.com/install_package/tomcat/taobao-tomcat-7.0.59.tgz?spm=5176.doc44158.2.1.uj170t&file=taobao-tomcat-7.0.59.tgz | tar -xzf - && \
    curl -skSL http://edas-public.oss-cn-hangzhou.aliyuncs.com/install_package/pandora/unauth/taobao-hsf.tgz?spm=5176.doc44158.2.2.uj170t&file=taobao-hsf.tgz | tar -C taobao-tomcat-7.0.59/deploy -xzf -

ENV CATALINA_HOME /opt/taobao-tomcat-7.0.59

WORKDIR ${CATALINA_HOME}/bin

CMD [ "/bin/sh", "catalina.sh", "run" ]
