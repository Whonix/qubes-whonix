#!/bin/bash

## Copyright (C) 2012 - 2025 ENCRYPTED SUPPORT LLC <adrelanos@whonix.org>
## See the file COPYING for copying conditions.

## Better not setting errtrace ('set -e').
## https://github.com/QubesOS/qubes-issues/issues/4080#issuecomment-405100531
##
## FIXME: Either get rid of strict mode here, or get rid of the above comment
## since we now set errexit and errtrace.
##
## FIXME: This file is poorly named, it is useful on both the gateway and
## workstation and contains code for both.

set -o errexit
set -o nounset
set -o pipefail
set -o errtrace
shopt -s inherit_errexit
shopt -s shift_verbose

if [ -f "/usr/share/anon-gw-base-files/gateway" ]; then
   qvm-features-request whonix-gw=1 || true
fi

if [ -f "/usr/share/anon-ws-base-files/workstation" ]; then
   qvm-features-request whonix-ws=1 || true
fi
