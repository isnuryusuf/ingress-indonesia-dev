#!/bin/bash
## Compile, Sign, Uinstall versi lama, Install versi baru, Start versi baru --- Yusuf Hadiwinata
echo " "
echo "Build" | grep Build --color
java -jar apktool.jar b ingress-1.37.2-broot-1.0.2.13

echo " "
echo "Sign" | grep Sign --color
./sign_apk.py ingress-1.37.2-broot-1.0.2.13/dist/ingress-1.37.2-broot-1.0.2.13.apk

echo " "
echo "Copying" | grep Copying --color
cp ingress-1.37.2-broot-1.0.2.13/dist/ingress-1.37.2-broot-1.0.2.13.apk /home/yusuf/Android/adt-bundle-linux-x86_64-20130729/sdk/platform-tools/

echo " "
echo "Uninstall Old App" | grep 'Uninstall Old App' --color
adb shell pm uninstall -k com.nianticproject.ingress

echo " "
echo "Install New App" | grep 'Install New App' --color
adb install ingress-1.37.2-broot-1.0.2.13/dist/ingress-1.37.2-broot-1.0.2.13.apk

echo " "
echo "Starting New App" | grep 'Starting New App' --color
adb shell am start -a android.intent.action.MAIN -n com.nianticproject.ingress/com.nianticproject.ingress.NemesisActivity
