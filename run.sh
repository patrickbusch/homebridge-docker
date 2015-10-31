#!/bin/bash

sed -i "s/#enable-dbus=yes/enable-dbus=yes/" /etc/avahi/avahi-daemon.conf
mkdir /var/run/dbus
dbus-daemon --system
avahi-daemon -D

runuser -l app -c 'cd /home/app/homebridge && npm run start'
