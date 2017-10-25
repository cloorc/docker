FROM alpine:3.6

MAINTAINER 张仪 <wittcnezh@foxmail.com>

RUN apk add --no-cache docker maven git && \
  echo -e "#!/usr/bin/env bash\nset -x\nmkdir ~/.ssh\necho -e "\$1"|base64 -d - > ~/.ssh/id_rsa\nchmod 600 ~/.ssh/id_rsa\ngit clone "\$2" workspace\nmkdir ~/.m2\ncurl -o ~/.m2/settings.xml -skSL "\$3"\ndocker login -u "\$5" -p "\$6" "\$4"\ncd workspace\nmvn clean install \${7:--Dmaven.test.skip=true -Dmaven.docker.skip=false -DpushImage=true}\n" > /opt/worker

RUN chmod +x /opt/worker

CMD ["echo", "Usage: /opt/worker <rsa-private-key-base64> <repo> <maven-settings> <registry> <docker-username> <docker-password> <maven-options>"]
