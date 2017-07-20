FROM kayess/ubuntu-updated:latest
MAINTAINER Kirit Saelensminde

WORKDIR /src

RUN \
    apt-get install -y lsb-release wget lbzip2 \
        g++ clang uuid-dev libbz2-dev libssl-dev libpq-dev && \
    apt-get clean

ADD fost-build /usr/local/bin/fost-build
