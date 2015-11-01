#!/bin/bash

BASEDIR=$(dirname $0)
cd $BASEDIR

VERSION=$(<VERSION-PI)
FROM=$(<FROM-PI)
SPECIFIC_FILE=Dockerfile.specific-PI
IMAGE_NAME=homebridge-pi-v$VERSION
SED_COMMAND="sed -i \"/#####SPECIFIC#####/ r $SPECIFIC_FILE\" Dockerfile"

source homebridge-common.sh
