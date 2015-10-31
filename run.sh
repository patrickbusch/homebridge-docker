#!/bin/bash

mkdir /var/run/dbus
dbus-daemon --system
avahi-daemon -D

runuser -l app -c 'npm run start'

