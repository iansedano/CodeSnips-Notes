#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit 1
fi

VENDOR_ID="0bda"
PRODUCT_ID="b812"

usb_modeswitch -R -v $VENDOR_ID -p $PRODUCT_ID