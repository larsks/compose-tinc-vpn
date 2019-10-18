#!/bin/sh

: ${VPN_HOSTS_REMOTE:=origin}
: ${VPN_HOSTS_BRANCH:=master}
: ${VPN_HOSTS_REFSPEC:=${VPN_HOSTS_REMOTE}/${VPN_HOSTS_BRANCH}}
: ${VPN_HOSTS_DIR:=/v/hosts}

set -e
cd ${VPN_HOSTS_DIR}

git remote update > /dev/null
local_head=$(git rev-parse HEAD)
remote_head=$(git rev-parse ${VPN_HOSTS_REFSPEC})

if [ "$local_head" != "$remote_head" ]; then
	git reset --hard ${VPN_HOSTS_REFSPEC}
fi
