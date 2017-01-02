FROM alpine:3.5

MAINTAINER 张仪 <wittcnezh@foxmail.coms>

RUN apk add --no-cache --update-cache bash maven && \
	echo "bash <(curl -skSL https://git.oschina.net/soiff/script/raw/master/gitlab-runner.sh)>/dev/null 2>&1">>/etc/bashrc

CMD ["mvn", "-version"]
