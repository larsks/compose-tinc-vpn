#!/bin/sh

mkdir -p /home/proxy/.ssh
chown -R proxy:proxy /home/proxy
chmod 700 /home/proxy /home/proxy/.ssh
chmod 600 /home/proxy/.ssh/authorized_keys

exec /usr/sbin/sshd -D "$@"
