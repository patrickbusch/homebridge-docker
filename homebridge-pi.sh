#!/bin/bash

BASEDIR=$(dirname $0)
cd $BASEDIR

VERSION=$(<VERSION-PI)
FROM=$(<FROM-PI)
SPECIFIC_FILE=Dockerfile.specific-PI
IMAGE_NAME=homebridge-pi-v$VERSION

source homebridge-common.sh