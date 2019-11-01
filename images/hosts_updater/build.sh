#!/bin/sh

set -e

container=$(buildah from alpine)

buildah run $container apk add --update \
	git openssh-client

buildah run $container mkdir -p /etc/tinc

buildah copy $container entrypoint.sh /entrypoint.sh
buildah copy $container update-hosts.sh /bin/update-hosts

buildah config \
	--entrypoint '["sh", "/entrypoint.sh"]' \
	--env VPN_HOST_UPDATE_PERIOD=15min \
	--cmd "crond -f -d8" \
	$container

buildah commit $container oddbit/vpn.hosts_updater
