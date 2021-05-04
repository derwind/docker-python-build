FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

RUN perl -pi -e 's/# deb-src/deb-src/' /etc/apt/sources.list && \
    apt update && apt build-dep -y python3.9

WORKDIR /workdir

VOLUME ["/workdir"]

CMD ["bash"]
