FROM alpine:3.4
MAINTAINER soiff
RUN apk --update add nginx
EXPOSE 80
ENTRYPOINT ["nginx", "-g", "daemon off;"]
