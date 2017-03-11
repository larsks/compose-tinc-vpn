#!/bin/sh

rm -f /var/run/babeld.pid
exec "$@"
