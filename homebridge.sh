#!/bin/bash

BASEDIR=$(dirname $0)
cd $BASEDIR

VERSION=$(<VERSION)
FROM=$(<FROM)
SPECIFIC_FILE=Dockerfile.specific
IMAGE_NAME=homebridge-v$VERSION
SED_COMMAND="sed -i \"/#####SPECIFIC#####/ r $SPECIFIC_FILE\" Dockerfile"

source homebridge-common.sh
