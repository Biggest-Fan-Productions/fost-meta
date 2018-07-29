FROM kayess/minit-restart:latest
MAINTAINER Kirit Saelensminde

RUN \
    apt-get install -y postgresql-client lbzip2 libicu60 \
            libboost-coroutine1.65.1 libboost-date-time1.65.1 \
            libboost-filesystem1.65.1 libboost-system1.65.1 && \
    apt-get clean
