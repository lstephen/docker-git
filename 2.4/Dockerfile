FROM ubuntu:trusty
MAINTAINER Levi Stephen <levi.stephen@gmail.com>

RUN apt-get update \
 && apt-get install -y \
     curl unzip make gcc autoconf \
 && apt-get install -y \
     libcurl4-gnutls-dev libexpat1-dev gettext libz-dev libssl-dev

ENV GIT_VERSION=2.4.5
ENV SRC_DIR=/usr/local/src
ENV GIT_SRC_DIR=$SRC_DIR/git-$GIT_VERSION

RUN mkdir -p $SRC_DIR
WORKDIR $SRC_DIR

RUN curl -LO https://github.com/git/git/archive/v$GIT_VERSION.zip \
 && unzip $SRC_DIR/v$GIT_VERSION.zip

WORKDIR $GIT_SRC_DIR
RUN make configure \
 && ./configure --prefix=/usr/local \
 && make all \
 && make install

