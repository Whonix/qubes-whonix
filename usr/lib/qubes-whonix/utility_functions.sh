#!/bin/bash -e
# vim: set ts=4 sw=4 sts=4 et :
#
# utility_functions.sh - Various utility functions or shared code used by
#                        the 'qubes-whonix' package.
#
# This file is part of Qubes+Whonix.
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

# Stops Qt form using the MIT-SHM X11 Shared Memory Extension
# Same solution as:
# https://github.com/marmarek/qubes-core-agent-linux/blob/master/misc/profile.d_qt_x11_no_mitshm.sh
# Required for whonix-setup-wizard. Otherwise dialogs would be invisible.
export QT_X11_NO_MITSHM=1

export XDG_CURRENT_DESKTOP=gnome

# 'apt-get' proxy server
PROXY_SERVER='http://10.137.255.254:8082/'

# 'tinyproxy' replacement text for 'usr/share/tinyproxy/default.html' which is
# used to determine if the proxy server is a secure Tor proxy server to prevent
# updates over the regular Qubes firewall VM
PROXY_META='<meta name="application-name" content="tor proxy"/>'

# QUBESDB and PREFIX are used to access data in Qubes database.  The interfaces
# to the database has changed in Release 3, so these vars will contain the proper
# program and syntax to use when accessing the database.

# Qubes R3
if which qubesdb-read > /dev/null; then
    QUBESDB=qubesdb
    PREFIX='/'
# Qubes R2
else
    QUBESDB=xenstore
    PREFIX=''
fi
