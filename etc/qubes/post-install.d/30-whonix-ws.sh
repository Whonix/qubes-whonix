#!/bin/bash

## Copyright (C) 2012 - 2025 ENCRYPTED SUPPORT LLC <adrelanos@whonix.org>
## See the file COPYING for copying conditions.

## style-ok: no-strict -- Better not setting errtrace ('set -e').
## https://github.com/QubesOS/qubes-issues/issues/4080#issuecomment-405100531

## FIXME: This file is poorly named, it is useful on both the gateway and
## workstation and contains code for both. Requires rename and rm_conffile in
## debian/qubes-whonix.maintscript

if [ -f "/usr/share/anon-gw-base-files/gateway" ]; then
   qvm-features-request whonix-gw=1 || true
fi

if [ -f "/usr/share/anon-ws-base-files/workstation" ]; then
   qvm-features-request whonix-ws=1 || true
fi

## Exit success even in case above command failed to avoid breaking the apt-get
## package management system.
true
