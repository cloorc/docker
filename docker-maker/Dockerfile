FROM docker

MAINTAINER 张仪 <wittcnezh@foxmail.com>

RUN apk add --no-cache maven openssh git && \
  mkdir /opt && \
  echo -e "#!/usr/bin/env sh\nset -x\ngit clone "\$1" workspace\nmkdir ~/.m2\ncurl -o ~/.m2/settings.xml -skSL "\$3"\ncd workspace\ngit checkout "\$2"\nmvn clean install \${4:--Dmaven.test.skip=true -Dmaven.docker.skip=false}\nif [ ! -e ~/images ]; then\n  mkdir ~/images\nfi\ndocker images|grep -v \"^REPOSITORY\"|awk '{print \$1\":\"\$2}'|while read image; do\n  out=\${image##*/}\n  out=\${out//:/-}\n  docker save -o ~/images/\${out} \${image}\ndone" > /opt/worker && \
  chmod +x /opt/worker

ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk/

CMD ["echo", "Usage: docker run --rm=true -v ~/.ssh:/root/.ssh -v ~/images:/root/images docker-maker /opt/worker <repo> <branch> <maven-settings> <maven-options>"]
