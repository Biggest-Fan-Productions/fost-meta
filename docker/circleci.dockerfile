ARG TAG
FROM fost/ubuntu:$TAG
MAINTAINER Kirit Saelensminde

RUN \
    apt install -y \
        wget git build-essential cmake gcc-10 g++-10 clang ninja-build \
        libssl-dev libboost-all-dev postgresql libpq-dev postgresql-server-dev-all \
        libc++-dev libc++abi-dev && \
    apt clean

RUN \
    cd /opt && \
    git clone https://github.com/hotkit/fost-boost.git && \
    cd fost-boost && \
    CC=clang CXX=clang++ CXXFLAGS="-stdlib=libc++" LD_FLAGS="-stdlib=libc++" BOOST_EXTRA_OPTS="cxxflags=-stdlib=libc++ linkflags=-stdlib=libc++" cmake . -G Ninja -DCMAKE_BUILD_TYPE=Debug -DBOOST_TOOLSET=clang-10 -DBOOST_VMINOR=66 && \
    CC=clang CXX=clang++ CXXFLAGS="-stdlib=libc++" LD_FLAGS="-stdlib=libc++" BOOST_EXTRA_OPTS="cxxflags=-stdlib=libc++ linkflags=-stdlib=libc++" cmake . -G Ninja -DCMAKE_BUILD_TYPE=Release -DBOOST_TOOLSET=clang-10 -DBOOST_VMINOR=66 && \
    rm 1_66_0.tar.bz2
