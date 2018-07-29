FROM kayess/ubuntu-updated:latest
MAINTAINER Kirit Saelensminde

WORKDIR /src

RUN \
    apt-get install -y lsb-release wget lbzip2 g++ clang cmake ninja-build \
        python-dev uuid-dev libbz2-dev libicu-dev libssl-dev \
        libpq-dev postgresql-server-dev-all libboost-all-dev && \
    apt-get clean

ADD fost-build /usr/local/bin/fost-build
