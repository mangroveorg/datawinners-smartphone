ant debug
echo "Launching emulator "
emulator -avd $AVD_NAME &
echo "Waiting for emulator to initialize "
sleep 70
adb install -r ../datawinners-smartphone/bin/datawinners-smartphone-debug.apk
cd ../functional-tests
adb install -r ./bin/automation-debug.apk
adb shell input keyevent 82
echo "Running tests "
adb shell am instrument -w com.datawinners.android.collect.test/android.test.InstrumentationTestRunner
killall emulator-arm
