FROM kayess/fost-runtime:latest
MAINTAINER Kirit Saelensminde

ENTRYPOINT ["/sbin/minit"]

ADD bin/* /usr/local/bin/
ADD lib/* /usr/local/lib/
ADD etc/* /etc/
ADD share/odin/* /usr/share/odin/
# ADD Static /usr/share/mengmom/static/
# ADD Templates /usr/share/mengmom/templates/

RUN ldconfig
