#!/bin/sh
cd `dirname $0`
CURRENT_DIR=`basename $(pwd)`
cd $ANDROID_HOME/extras/google/market_licensing/library
android update project -p . --target android-21
unzip $ANDROID_HOME/extras/android/m2repository/com/android/support/support-v4/24.1.1/support-v4-24.1.1.aar -d /tmp
cp /tmp/classes.jar ~/$CURRENT_DIR/libs/
