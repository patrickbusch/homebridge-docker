#!/bin/bash

dbus-daemon --system
avahi-daemon -D

runuser -l app -c 'homebridge'
