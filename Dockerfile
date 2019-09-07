FROM alpine:latest
MAINTAINER redbeard28 <https://github.com/redbeard28/docker_mkdocs>

RUN apk add --update wget python3 && pip3 install --upgrade pip && rm -rf /var/cache/apk/*


# Install dependencies
COPY requirements.txt .
#COPY docs docs_src mkdocs.yml favicon.ico icon.png  /work/
COPY / /work/
RUN mkdir /work/site


RUN \
  pip3 install -r requirements.txt && \
  rm requirements.txt


WORKDIR /work

#VOLUME /work
EXPOSE 8000

#ENTRYPOINT ["mkdocs","serve","-a","0.0.0.0:8000","&"]
CMD ["mkdocs", "serve","-a","0.0.0.0:8000"]
