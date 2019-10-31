#!/bin/bash

hub checkout master
SEEK=`date '+%Y%m%d%H%M%S'`
VERSION=`echo "obase=16;${SEEK}"|bc`
hub release create -a ./${APP_FOLDER}/build/outputs/apk/debug/app-debug.apk -m "${RELEASE_TITLE_HEAD} ${VERSION} ${RELEASE_TITLE_FOOT}" "Automatic generated" 
