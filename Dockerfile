FROM alpine:latest
MAINTAINER redbeard28 <https://github.com/redbeard28>

RUN apk add --update python3 py-pip && pip3 install --upgrade pip && pip3 install mkdocs && rm -rf /var/cache/apk/*

WORKDIR /docs

VOLUME /docs
EXPOSE 8000

ENTRYPOINT ["mkdocs"]
