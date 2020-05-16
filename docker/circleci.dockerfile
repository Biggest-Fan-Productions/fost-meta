ARG TAG
FROM fost/ubuntu:$TAG
MAINTAINER Kirit Saelensminde

RUN \
    apt install -y \
        git build-essential cmake gcc-10 g++-10 clang ninja-build \
        libssl-dev libboost-all-dev libpq-dev postgresql-server-dev-all && \
    apt clean
