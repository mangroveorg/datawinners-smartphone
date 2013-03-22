cd ../../
wget http://dl.google.com/android/android-sdk_r21-linux.tgz
tar xvzf android-sdk_r21-linux.tgz
cd android-sdk-linux
./tools/android update sdk --no-ui --filter `./tools/android list sdk | grep 'SDK Platform Android 4.0.3, API 15, revision 3' | cut -c 4-4`
./tools/android update sdk --no-ui --filter `./tools/android list sdk | grep 'Android SDK Platform-tools, revision 16.0.2' | cut -c 4-4`
./tools/android update sdk --no-ui --filter `./tools/android list sdk | grep 'Android SDK Tools, revision 21.1' | cut -c 4-4`
./tools/android update sdk --no-ui --filter `./tools/android list sdk | grep 'ARM EABI v7a System Image, Android API 15, revision 2' | cut -c 3-4`
./tools/android update sdk --no-ui --filter `./tools/android list sdk | grep 'Google APIs, Android API 15, revision 2' | cut -c 3-4`
echo 'export PATH=/usr/local/bin:/bin:/usr/bin:/sbin:/usr/sbin:`pwd`/platform-tools:`pwd`/tools' >> ~/.bashrc
echo 'export ANDROID_HOME=`pwd`' >> ~/.bashrc
. ~/.bashrc


