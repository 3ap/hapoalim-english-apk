# Bank Hapoalim Android English translation mod

![Attractive image](/screenshots/english.png)

It's hard to use Israeli bank application if you don't know Hebrew.
This is a set of files that you can use to translate Hebrew labels in app to English.

To use it you should:

  - install [Java JRE & JDK](https://www.oracle.com/java/technologies/javase-jdk14-downloads.html) on your PC
  - [generate your own keystore](https://stackoverflow.com/a/15330139) for signing new APK
  - download and set up [APK Studio](https://github.com/vaibhavpandeyvpz/apkstudio/releases)
  - unpack original APK ([from repo](https://github.com/3ap/hapoalim-english-apk/raw/master/com.ideomobile.hapoalim.apk) or [get it from Google Play](https://apps.evozi.com/apk-downloader/?id=com.ideomobile.hapoalim)) using APK Studio
  - copy files from repo's *patch* dir to APK Studio's project dir, it should be located near APK and looks like *com.ideomobile.hapoalim.apk-decompiled*
  - rebuild app from APK Studio (Project → Build)
  - sign it using APK Studio (Project → Sign)
  - put your APK (*com.ideomobile.hapoalim.apk-decompiled/dist/com.ideomobile.hapoalim.apk*) into your device (via ADB or MTP) and install it via file explorer
