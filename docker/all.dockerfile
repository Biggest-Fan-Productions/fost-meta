## # Fost "All" Image
ARG TAG
FROM fost/runtime:$TAG

COPY dist/bin /usr/bin/
COPY dist/lib /usr/lib/
COPY dist/etc /etc/
COPY dist/share/odin /usr/share/odin
RUN apt update && apt install -y python3-psycopg2 && apt clean
