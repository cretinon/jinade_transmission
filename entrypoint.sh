#!/bin/sh

if [ "a$VPN_GW" != "a" ]; then
    route del default
    route add default gw $VPN_GW
    route add -net $WORKER_LAN gw 172.17.0.1
fi

if [ "a$1" = "a" ]; then
	/usr/bin/transmission-daemon --foreground --config-dir /etc/transmission-daemon/ --log-debug
fi
