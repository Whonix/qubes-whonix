#!/bin/bash

## Copyright (C) 2012 - 2025 ENCRYPTED SUPPORT LLC <adrelanos@whonix.org>
## See the file COPYING for copying conditions.

## Better not setting errtrace ('set -e').
## https://github.com/QubesOS/qubes-issues/issues/4080#issuecomment-405100531

set -o errexit
set -o nounset
set -o pipefail
set -o errtrace
shopt -s inherit_errexit
shopt -s shift_verbose

if [ -f "/usr/share/anon-gw-base-files/gateway" ]; then
   qvm-features-request whonix-gw=1
fi

if [ -f "/usr/share/anon-ws-base-files/workstation" ]; then
   qvm-features-request whonix-ws=1
fi

## Exit success even in case above command failed to avoid breaking the apt-get
## package management system.
true
