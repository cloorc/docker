FROM alpine:3.6

MAINTAINER 张仪 <wittcnezh@foxmail.com>

RUN apk add --no-cache docker maven git &&
  tee /opt/worker <<EOF
  #!/usr/bin/env bash
  set -x
  mkdir ~/.ssh
  echo -e "\$1"|base64 -d - > ~/.ssh/id_rsa
  chmod 600 ~/.ssh/id_rsa
  git clone "\$2" workspace
  mkdir ~/.m2
  curl -o ~/.m2/settings.xml -skSL "\$3"
  docker login -u "\$5" -p "\$6" "\$4"
  cd workspace
  mvn clean install \${7:--Dmaven.test.skip=true -Dmaven.docker.skip=false -DpushImage=true}
EOF

RUN chmod +x /opt/worker

CMD ["echo", "Usage: /opt/worker <rsa-private-key-base64> <repo> <maven-settings> <registry> <docker-username> <docker-password> <maven-options>"]
