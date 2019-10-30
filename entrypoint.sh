#!/bin/bash

hub checkout master
SEEK=`date '%Y%m%d%H%M%S'`
VERSION=`echo "obase=64;${SEEK}"|bc`
hub release create -a ./${APP_FOLDER}/build/outputs/apk/debug/app-debug.apk -m "${RELEASE_TITLE}${VERSION}" $(date +%Y%m%d%H%M%S) 
