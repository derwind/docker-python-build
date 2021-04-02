FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive

RUN perl -pi -e 's/# deb-src/deb-src/' /etc/apt/sources.list && \
    apt update && apt build-dep -y python3.8

WORKDIR /workdir

VOLUME ["/workdir"]

CMD ["bash"]
