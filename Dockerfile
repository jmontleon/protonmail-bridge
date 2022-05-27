FROM docker.io/library/fedora:latest
RUN dnf -y update \
  && dnf -y install socat pass \
  https://github.com/$(curl -L https://github.com/ProtonMail/proton-bridge/releases/latest | grep '/ProtonMail.*rpm' | awk -F '\"' '{ print $2 }' \
  && dnf clean all
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
ENTRYPOINT /usr/local/bin/entrypoint.sh
