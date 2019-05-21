#!/bin/bash

WORKSPACE=$(dirname $0)
docker run --user=root -it --rm --privileged \
  -v /home/travis/build/pxtechio/pxlinux/pxboard/base/assets:/assets \
  -v /home/travis/build/pxtechio/pxlinux/pxboard/base/config:/config \
  pxtech/pxlinux-ci:latest

sudo chown travis:travis /home/travis/build/pxtechio/pxlinux/pxboard/base/assets/images/PXBoardQP4G-latest.img
sudo rm /home/travis/build/pxtechio/pxlinux/pxboard/base/assets/images/PXBoardQP4G-latest.img.zip
sudo zip -j /home/travis/build/pxtechio/pxlinux/pxboard/base/assets/images/PXBoardQP4G-latest.img.zip  /home/travis/build/pxtechio/pxlinux/pxboard/base/assets/images/PXBoardQP4G-latest.img

sh -x upload_img.sh /home/travis/build/pxtechio/pxlinux/pxboard/base/assets/images/PXBoardQP4G-latest.img.zip PXBoardQP4G-latest.img.zip
