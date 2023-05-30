# This files contains some of the hacks that I used(are needed) to make Expo work on WSL2.

# On host machine, run:
adb kill-server ; adb -a nodaemon server start

# On WSL2, run:
adb devices

# check of expo can run `adb` commands
adb -s emulator-5554 emu avd name

# If the above command fails, run: this replace "adb" executable with a script that will run the adb command in the host machine.
sudo ln -s /mnt/c/Users/stonks/AppData/Local/Android/Sdk/platform-tools/adb.exe ~/android/platform-tools/adb

# create dev client apk
eas build --profile development --platform android
