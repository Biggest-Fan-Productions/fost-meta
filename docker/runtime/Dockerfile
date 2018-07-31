ARG TAG
FROM fost/ubuntu:$TAG
MAINTAINER Kirit Saelensminde

RUN \
    apt install -y postgresql-client lbzip2 libicu60 \
            libboost-coroutine1.65.1 libboost-date-time1.65.1 \
            libboost-filesystem1.65.1 libboost-system1.65.1 && \
    apt clean
