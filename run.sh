#!/bin/bash

sed -i "s/rlimit-nproc=3/#rlimit-nproc=3/" /etc/avahi/avahi-daemon.conf

#dbus-daemon --system
#avahi-daemon -D

/etc/init.d/dbus restart 
service avahi-daemon start 
service avahi-daemon start 

homebridge
