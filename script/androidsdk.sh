#!/bin/bash
ANDROID_BUILD_TOOLS_VERSION=28.0.2
ANDROID_NDK_VERSION=r17-beta2
wget https://dl-ssl.google.com/android/repository/tools_r25.2.5-linux.zip
mkdir ~/Android
unzip -d ~/Android ./tools_r25.2.5-linux.zip
rm ./tools_r25.2.5-linux.zip
wget https://dl.google.com/android/repository/android-ndk-$ANDROID_NDK_VERSION-linux-x86_64.zip
unzip -d ~/Android ./android-ndk-$ANDROID_NDK_VERSION-linux-x86_64.zip
rm ./android-ndk-$ANDROID_NDK_VERSION-linux-x86_64.zip
echo export ANDROID_HOME=~/Android >> ~/.profile
echo export PATH='$PATH:$ANDROID_HOME/android-ndk-'$ANDROID_NDK_VERSION >> ~/.profile
echo export PATH='$PATH:$ANDROID_HOME/build-tools/'$ANDROID_BUILD_TOOLS_VERSION >> ~/.profile
echo export PATH='$PATH:$ANDROID_HOME/platform-tools' >> ~/.profile
echo export PATH='$PATH:$ANDROID_HOME/tools' >> ~/.profile
echo export PATH='$PATH:$ANDROID_HOME/tools/bin' >> ~/.profile
source ~/.profile
mkdir ~/.android
touch ~/.android/repositories.cfg
sdkmanager  "platform-tools" "build-tools;$ANDROID_BUILD_TOOLS_VERSION" "platforms;android-21" "extras;android;m2repository" "extras;google;market_licensing"

