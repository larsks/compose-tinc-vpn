#!/bin/sh

mkdir -p /var/run/quagga /etc/quagga
chown quagga:quagga /var/run/quagga /etc/quagga
exec "$@"
