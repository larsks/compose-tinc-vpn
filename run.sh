#!/bin/sh

set -e

. ./.env

podman run \
	-e VPN_NAME="${VPN_NAME:-vpn}" \
	-e VPN_NODE="${VPN_NODE}" \
	-e VPN_ADDR=${VPN_ADDR}" \
	-v ./tinc:/etc/tinc/$VPN_NAME \
	-v ./hosts:/etc/tinc/$VPN_NAME/hosts \
	-v "/run/dnsmasq/servers.conf.d:/run/dnsmasq/servers.conf.d" \
	--net=host \
	--add-host="bouncer.oddbit.com:159.203.147.134" \
	--privileged \
	--name com.oddbit.vpn.tinc \
	"$@" \
	oddbit/vpn.tinc
