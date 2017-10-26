FROM docker

MAINTAINER 张仪 <wittcnezh@foxmail.com>

RUN apk add --no-cache maven openssh git && \
  mkdir /opt && \
  echo -e "#!/usr/bin/env sh\nset -x\nmkdir ~/.ssh\necho -e "\$1"|base64 -d - > ~/.ssh/id_rsa\nchmod 600 ~/.ssh/id_rsa\ngit clone "\$2" workspace\nmkdir ~/.m2\ncurl -o ~/.m2/settings.xml -skSL "\$3"\ndocker login -u "\$5" -p "\$6" "\$4"\ncd workspace\nmvn clean install \${7:--Dmaven.test.skip=true -Dmaven.docker.skip=false -DpushImage=true}\n" > /opt/worker && \
  chmod +x /opt/worker

ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk/

CMD ["echo", "Usage: /opt/worker <rsa-private-key-base64> <repo> <maven-settings> <registry> <docker-username> <docker-password> <maven-options>"]
