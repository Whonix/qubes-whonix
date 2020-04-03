#!/bin/bash -e
# vim: set ts=4 sw=4 sts=4 et :
#
# utility_functions.sh - Various utility functions or shared code used by
#                        the 'qubes-whonix' package.
#
# Copyright (C) 2014 - 2015 Jason Mehring <nrgaway@gmail.com>
# License: GPL-2+
# Authors: Jason Mehring
#
#   This program is free software; you can redistribute it and/or
#   modify it under the terms of the GNU General Public License
#   as published by the Free Software Foundation; either version 2
#   of the License, or (at your option) any later version.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with this program.  If not, see <http://www.gnu.org/licenses/>.

# 'apt-get' proxy server
if systemctl -q is-active qubes-updates-proxy-forwarder.socket; then
    PROXY_SERVER='http://127.0.0.1:8082/'
else
    PROXY_SERVER='http://10.137.255.254:8082/'
fi

# A magic line in the error pages tinyproxy (from qubes-updates-proxy) and
# squid (qubes-updates-cache) send on Whonix when something connects to their
# proxy port as if it was a web server. Client VMs can (and *Whonix* client VMs
# *do*) check for the presence of this line, telling them we'll be torifying
# their package downloads.
PROXY_META='<meta name="application-name" content="tor proxy"/>'
