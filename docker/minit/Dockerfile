ARG TAG
FROM fost/builder:$TAG AS minit-builder
MAINTAINER Kirit Saelensminde

WORKDIR /src/
ADD minit.c /src/minit.c
RUN gcc -O2 -o minit minit.c
RUN gcc -DRESTART -O2 -o minit-restart minit.c

## # Minit image creation
ARG TAG
FROM fost/ubuntu:$TAG

COPY --from=minit-builder /src/minit /sbin/
COPY --from=minit-builder /src/minit-restart /sbin/
ENTRYPOINT ["/sbin/minit"]
