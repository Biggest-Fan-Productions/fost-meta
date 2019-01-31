ARG TAG
FROM fost/builder:$TAG AS fost-builder

ADD . /src/
RUN mkdir /build.tmp && \
    cd /build.tmp && \
    cmake -G Ninja \
        -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX=../dist \
        /src/  && \
    ninja install/strip


## # Fost "All" Image
ARG TAG
FROM fost/runtime:$TAG

COPY --from=fost-builder /dist/bin /usr/bin/
COPY --from=fost-builder /dist/lib /usr/lib/
COPY --from=fost-builder /dist/etc /etc/
COPY --from=fost-builder /dist/share/odin /usr/share/odin
RUN apt update && apt install -y python3-psycopg2 && apt clean
