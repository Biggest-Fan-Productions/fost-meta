ARG TAG
FROM fost/ubuntu:$TAG
MAINTAINER Kirit Saelensminde

RUN \
    apt install -y lsb-release wget lbzip2 g++ clang cmake ninja-build \
        python-dev uuid-dev libbz2-dev libicu-dev libssl-dev \
        libpq-dev postgresql-server-dev-all libboost-all-dev && \
    apt clean
