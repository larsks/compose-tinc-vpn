#!/bin/sh

: ${VPN_HOSTS_REFSPEC:=origin/master}

set -e
cd /v/hosts
git remote update
git reset --hard ${VPN_HOSTS_REFSPEC}
