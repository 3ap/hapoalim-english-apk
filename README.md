# Bank Hapoalim Android English translation mod

![Attractive image](/screenshots/english.png)

It's hard to use Israeli bank application if you don't know Hebrew.
This is a set of files that you can use to translate Hebrew labels in app to English.

Use these instructions below to modify your own copy of APK:

  - install [Java JRE & JDK][java] on your PC
  - [generate your own keystore][keystore] for signing new APK
  - download and set up [APK Studio][apk-studio]
  - extract original APK from your phone using [SAI][sai]
  - open APK Studio and unpack original APK
  - copy files from repo's appropriate *patch* dir to APK Studio's
    project dir, it should be located next to your original APK file
    and looks like *com.ideomobile.hapoalim.apk-decompiled*
  - rebuild app from APK Studio (Project → Build)
  - sign it with your own keystore using APK Studio (Project → Sign)
  - uninstall original APK from your device
  - put your APK (*com.ideomobile.hapoalim.apk-decompiled/dist/com.ideomobile.hapoalim.apk*)
    into your device (via ADB or MTP) and install it via file
    explorer

[java]: https://www.oracle.com/java/technologies/javase-jdk14-downloads.html
[keystore]: https://stackoverflow.com/a/15330139
[apk-studio]: https://stackoverflow.com/a/15330139
[sai]: https://stackoverflow.com/a/15330139
