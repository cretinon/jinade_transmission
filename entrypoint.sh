#!/bin/sh

if [ "a$VPN_GW" != "a" ]; then
    route del default
    route add default gw $VPN_GW
    route add -net $WORKER_LAN gw 172.17.0.1
fi

/usr/bin/transmission-daemon --foreground --config-dir /etc/transmission-daemon/ --log-debug
