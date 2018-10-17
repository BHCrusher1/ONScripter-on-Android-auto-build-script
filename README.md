# ONScripter on Android auto build script

ONScripter on Android by ogapee [https://onscripter.osdn.jp/android/](https://onscripter.osdn.jp/android/)

This is ONScripter on Android auto build script.

This script has been tested with Lubuntu 18.04.

## How to use

1. Grant executable permission  
    `chmod 764 ./script/*.sh`

1. Install Java & Apache Ant (When not installed)  
    `./script/java.sh`

1. Install Android SDK (When not installed)  
    `./script/androidsdk.sh`

1. Download onscripter_android. Extract to `~/`

1. Copy script  
    `cp ./script/build.sh ./script/ones.sh ~/onscripter_android`

1. Reboot this PC.

1. Type command  
    `cd ~/onscripter_android`

1. Run `./ones.sh` (execute only at the first time)

1. Generating a certificate.  
    `keytool -genkey -v -keystore release.keystore -alias releasename -keyalg RSA -validity 10000`

1. Type command `./build.sh`  
    Please input as certificate passphrase is requested.

1. If there is no problem, `$CURRENT_DIR-release-signed.apk` is generated in `~/onscripter_android/bin/`.

## License

MIT
