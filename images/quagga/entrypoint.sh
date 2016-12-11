#!/bin/sh

mkdir -p /var/run/quagga
chown quagga:quagga /var/run/quagga

exec "$@"
