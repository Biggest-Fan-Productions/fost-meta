## The release name, `bionic`, appears both here and in the `rebuild` script.
## Both must be changed.
ARG UBUNTU=bionic
FROM ubuntu:${UBUNTU}
MAINTAINER Kirit Saelensminde

## Make `ischroot` generally return true -- this stops a number of apt errors
## <https://journal.paul.querna.org/articles/2013/10/15/docker-ubuntu-on-rackspace/>
ENV FAKE_CHROOT 1
RUN mv /usr/bin/ischroot /usr/bin/ischroot.original
ADD ischroot /usr/bin/ischroot
ENV INITRD No
ENV DEBIAN_FRONTEND noninteractive

RUN \
    apt update && \
    apt install -y apt-utils && \
    apt dist-upgrade -y && \
    apt clean
