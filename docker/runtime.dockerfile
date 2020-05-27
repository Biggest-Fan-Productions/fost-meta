ARG TAG
FROM fost/ubuntu:$TAG
MAINTAINER Kirit Saelensminde

RUN \
    apt install -y ca-certificates postgresql-client lbzip2 libicu66 \
            libboost-coroutine1.71.0 libboost-date-time1.71.0 \
            libboost-filesystem1.71.0 libboost-system1.71.0 && \
    apt clean
