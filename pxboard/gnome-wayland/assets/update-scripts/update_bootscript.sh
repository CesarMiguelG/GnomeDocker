#!/bin/bash

set -e


WORKSPACE=$(dirname $0)

cd /boot
cat boot.txt

pacman -S uboot-tools --noconfirm

mkimage -A arm -T script -O linux -C none -d boot.txt boot.scr

pacman -R uboot-tools --noconfirm

cd $WORKSPACE