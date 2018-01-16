FROM ubuntu:16.04

ENV HOME /root
WORKDIR /root

RUN apt-get update && apt-get install -qy --no-install-recommends \
    git \
    iproute2 \
    python3-pip \
    python3-setuptools \
 && rm -rf /var/lib/apt/lists/* \
 && pip3 install git+https://github.com/Exa-Networks/exabgp

