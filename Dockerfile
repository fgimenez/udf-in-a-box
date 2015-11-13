FROM ubuntu:wily

USER root

RUN apt-get update && apt-get install -qy \
  ubuntu-device-flash \
  ubuntu-core-security-utils \
  ca-certificates && \
  rm -rf /var/libs/apt/lists/*

RUN ln -s /bin/true /usr/local/bin/udevadm

RUN mkdir -p /tmp/udf
