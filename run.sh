#!/bin/bash

dbus-daemon --system
avahi-daemon -D

runuser -l app -c 'cd /home/app/homebridge && npm run start'
