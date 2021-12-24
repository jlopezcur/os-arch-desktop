#!/usr/bin/sh

docker run -it --rm \
  --name os-arch-desktop-test \
  --mount type=bind,source="$(pwd)"/setup-root.sh,target=/setup-root.sh \
  --mount type=bind,source="$(pwd)"/setup-user.sh,target=/setup-user.sh \
  archlinux:latest \
  /setup-root.sh
