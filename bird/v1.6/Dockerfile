FROM debian:stretch

ENV HOME /root
WORKDIR /root

ENV BIRD_VERSION 1.6.3

RUN apt-get update && apt-get install -y --no-install-recommends \
# For getting sources
    curl \
# Utility
    iproute2 \
# For building
    gcc \
    make \
    bison \
    flex \
    libncurses-dev \
    libreadline-dev \
 && rm -rf /var/lib/apt/lists/* \
 && mkdir -p /root/bird \
 && curl ftp://bird.network.cz/pub/bird/bird-${BIRD_VERSION}.tar.gz \
  | tar zx -C /root/bird --strip-components 1 \
 && cd /root/bird \
 && ./configure \
    --enable-ipv6 \
    --prefix= \
    --sysconfdir=/etc/bird \
 && make && make install

