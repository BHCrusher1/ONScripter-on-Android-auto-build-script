#!/bin/sh
cd `dirname $0`
CURRENT_DIR=`basename $(pwd)`
RELATIVE_PATH_TO_SDK=`realpath --relative-to=./ $ANDROID_HOME`
ndk-build
android update project -p . --library $RELATIVE_PATH_TO_SDK/extras/google/market_licensing/library
ant clean
ant release
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore release.keystore bin/ONScripter-release-unsigned.apk releasename
zipalign -f -v 4 bin/ONScripter-release-unsigned.apk bin/$CURRENT_DIR-release-signed.apk

