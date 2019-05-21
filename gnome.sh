#!/bin/bash

WORKSPACE=$(dirname $0)
docker run --user=root -it --rm --privileged \
  -v /home/cesarm/pxlinux/pxboard/gnome-wayland/assets:/assets \
  -v /home/cesarm/pxlinux/pxboard/gnome-wayland/config:/config \
  pxtech/pxlinux:latest


