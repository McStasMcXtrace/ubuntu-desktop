#!/bin/bash

if [ -z "$1" ]; then
  echo "$0: <wallpaper> [layout]"
  exit 1
fi

case "$1" in
  1) WPURL="http://digitalblasphemy.com/graphics/HDfree/rainydayparadise1HDfree.jpg" ;;
  2) WPURL="http://digitalblasphemy.com/graphics/HDfree/portals1HDfree.jpg" ;;
  3) WPURL="http://digitalblasphemy.com/graphics/HDfree/unchained1HDfree.jpg" ;;
  4) WPURL="http://digitalblasphemy.com/graphics/HDfree/remembrance1HDfree.jpg" ;;
  5) WPURL="http://digitalblasphemy.com/graphics/HDfree/arcana2HDfree.jpg" ;;
  6) WPURL="http://digitalblasphemy.com/graphics/HDfree/highlandspring1HDfree.jpg" ;;
  7) WPURL="http://digitalblasphemy.com/graphics/HDfree/circularlogicHDfree.jpg" ;;
  8) WPURL="http://digitalblasphemy.com/graphics/HDfree/thetismoonHDfree.jpg" ;;
  *) WPURL="0" ;;
esac

case "$2" in
    "fill") HSRCMD="-fill" ;;
  "extend") HSRCMD="-extend" ;;
    "full") HSRCMD="-full" ;;
    "tile") HSRCMD="-tile" ;;
   "cover") HSRCMD="-cover" ;;
  "center") HSRCMD="-center" ;;
         *) HSRCMD="-center" ;;
esac

if [ -n "${WPURL}" ] && [ "${WPURL}" != "0" ]; then
  wget "${WPURL}" -O /tmp/wpimg && hsetroot "${HSRCMD}" /tmp/wpimg && rm /tmp/wpimg
fi
