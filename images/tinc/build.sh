#!/bin/sh

set -e

container=$(buildah from alpine)

buildah run $container apk add --update \
	tinc tcpdump iptables iproute2 ulogd bind-tools

buildah run $container mkdir -p /etc/tinc

buildah copy $container start-tinc /bin/start-tinc

buildah config \
	--cmd "-D" \
	--entrypoint '["sh", "/bin/start-tinc"]' \
	$container

buildah commit $container oddbit/vpn.tinc
