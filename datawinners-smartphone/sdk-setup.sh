cd ../../
wget http://dl.google.com/android/android-sdk_r23-linux.tgz
tar xvzf android-sdk_r23-linux.tgz
cd android-sdk-linux
./tools/android update sdk --no-ui --filter `./tools/android list sdk | grep 'SDK Platform Android 4.4.2, API 19, revision 3' | cut -c 3-4`
./tools/android update sdk --no-ui --filter `./tools/android list sdk | grep 'Android SDK Platform-tools, revision 20' | cut -c 3-4`
./tools/android update sdk --no-ui --filter `./tools/android list sdk | grep 'Android SDK Tools, revision 23.0.2' | cut -c 3-4`
./tools/android update sdk --no-ui --filter `./tools/android list sdk | grep 'Google APIs (ARM System Image), Android API 19, revision 7' | cut -c 3-4`
./tools/android update sdk --no-ui --filter `./tools/android list sdk | grep 'Google APIs, Android API 19, revision 2' | cut -c 3-4`
./tools/android update sdk --no-ui --filter `./tools/android list sdk | grep 'Google Play services, revision 19' | cut -c 3-4`

echo 'export PATH=/usr/local/bin:/bin:/usr/bin:/sbin:/usr/sbin:`pwd`/platform-tools:`pwd`/tools' >> ~/.bashrc
echo 'export ANDROID_HOME=`pwd`' >> ~/.bashrc
. ~/.bashrc
