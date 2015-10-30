#!/bin/bash

service avahi-daemon start

runuser -l app -c 'npm run start'

