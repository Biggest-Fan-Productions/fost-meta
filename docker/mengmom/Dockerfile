FROM kayess/fost-runtime:latest
MAINTAINER Kirit Saelensminde

ENTRYPOINT ["/sbin/minit"]

ADD bin /usr/bin
ADD lib /usr/lib
RUN apt-get update && apt-get install -y python3-psycopg2 && apt-get clean
ADD share/odin /usr/share/odin
ADD etc /etc

# ADD Static /usr/share/mengmom/static/
# ADD Templates /usr/share/mengmom/templates/
