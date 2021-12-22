#!/usr/bin/sh

docker run -it --rm \
  --name os-arch-desktop-test \
  --mount type=bind,source="$(pwd)"/setup.sh,target=/root/setup.sh \
  archlinux:latest \
  /root/setup.sh
