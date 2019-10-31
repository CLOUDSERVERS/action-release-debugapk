#!/bin/bash

hub checkout master
SEEK=`date '+%Y%m%d%H%M%S'`
VERSION_NAME=`echo "obase=16;${SEEK}"|bc|tr '[:upper:]' '[:lower:]'`
VERSION_CODE=`date '%Y%U%w'`
sed -i 's/versionCode.*/versionCode ${VERSION_CODE}/1' ./app/build.gradle
sed -i 's/versionName.*/versionName "${VERSION_NAME}-alpha"/1' ./app/build.gradle
hub release create -a ./${APP_FOLDER}/build/outputs/apk/debug/app-debug.apk -m "${RELEASE_TITLE_HEAD} ${VERSION_NAME} ${RELEASE_TITLE_FOOT}" ${VERSION_CODE}
