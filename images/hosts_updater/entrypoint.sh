#!/bin/sh

: ${VPN_HOST_UPDATE_PERIOD:=15min}

ln -s /bin/update-hosts /etc/periodic/${VPN_HOST_UPDATE_PERIOD}/
exec "$@"
