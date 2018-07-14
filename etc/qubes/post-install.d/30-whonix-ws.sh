#!/bin/sh

if [ -f "/usr/share/anon-gw-base-files/gateway" ]; then
   qvm-features-request whonix-gw=1
fi

if [ -f "/usr/share/anon-ws-base-files/workstation" ]; then
   qvm-features-request whonix-ws=1
fi

true
