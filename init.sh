#!/bin/sh

#
# Script options (exit script on command fail).
#
set -e

#
# Define default Variables.
#
COMMAND_OPTIONS_DEFAULT="-f"
COMMAND="/usr/sbin/named -c /etc/bind/named.conf ${COMMAND_OPTIONS:=${COMMAND_OPTIONS_DEFAULT}}"

chown root:root /etc/bind/
chown root:root /etc/bind/*
chown root:root /var/log/named/
chown root:root /var/log/named/*
#
# Start named.
#
echo "Start named... "
exec ${COMMAND}