FROM alpine:v3.6

RUN apk add --no-cache --update nodejs curl openssh && \
  npm install -g drakov

CMD ["drakov", "--version"]