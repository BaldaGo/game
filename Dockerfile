FROM golang:1.8
MAINTAINER Nikita Boyarskikh <N02@yandex.ru>

RUN \
  apt-get update && \
  apt-get -y install \
    git \
    golang-go


ENV GOPATH /code
COPY . code/src/github.com/BaldaGo/balda-go
WORKDIR /code/src/github.com/BaldaGo/balda-go

CMD go build
