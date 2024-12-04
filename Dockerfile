FROM alpine:3.20.1

ENV HOME /root

WORKDIR $HOME/projects/Cartantarctica/

ENV DEBIAN_FRONTEND=noninteractive

RUN apk update && install -y \
    qgis \
    git \
    vim \
    curl \
    wget \
    tar \

RUN mkdir firstmap/ && \ 
    cd firstmap/ && \
    mkdir /sources && \
    mkdir /maps && \
    mkdir /layers


