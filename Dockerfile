FROM alpine:latest
MAINTAINER redbeard28 <https://github.com/redbeard28/docker_mkdocs>

RUN apk add --update wget python3 && pip3 install --upgrade pip && rm -rf /var/cache/apk/*


# Install dependencies
COPY requirements.txt .
RUN \
  pip3 install -r requirements.txt && \
  rm requirements.txt


WORKDIR /work

VOLUME /work
EXPOSE 8000

ENTRYPOINT ["mkdocs"]
