FROM docker.io/library/fedora:latest
RUN dnf -y update \
  && dnf -y install socat pass \
  https://protonmail.com/download/bridge/protonmail-bridge-2.1.1-1.x86_64.rpm \
  && dnf clean all
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
ENTRYPOINT /usr/local/bin/entrypoint.sh
