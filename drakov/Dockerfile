FROM alpine:3.6

RUN apk add --no-cache --update nodejs nodejs-npm curl openssh git && \
  npm install -g drakov && \
  npm install -g simple-git

CMD ["drakov"]