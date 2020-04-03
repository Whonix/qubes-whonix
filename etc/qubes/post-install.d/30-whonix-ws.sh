#!/bin/sh

## Copyright (C) 2012 - 2020 ENCRYPTED SUPPORT LP <adrelanos@riseup.net>
## See the file COPYING for copying conditions.

## Better not setting errtrace ('set -e').
## https://github.com/QubesOS/qubes-issues/issues/4080#issuecomment-405100531

if [ -f "/usr/share/anon-gw-base-files/gateway" ]; then
   qvm-features-request whonix-gw=1
fi

if [ -f "/usr/share/anon-ws-base-files/workstation" ]; then
   qvm-features-request whonix-ws=1
fi

## Exit success even in case above command failed to avoid breaking tje apt-get
## package management system.
true
