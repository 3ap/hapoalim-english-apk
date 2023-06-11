# Bank Hapoalim Android English translation mod

![Attractive image](/screenshots/english.png)

It's hard to use Israeli bank application if you don't know Hebrew.
This is a set of files that you can use to translate Hebrew labels in app to English.

Use these instructions below to modify your own copy of APK:

  1.  install [Java JRE & JDK][java] on your PC
  2.  [generate your own keystore][keystore] for signing new APK
  3.  download and set up [APK Studio][apk-studio]
  4.  extract original APK from your phone using [SAI][sai]
  5.  open APK Studio and unpack original APK
  6.  copy files from repo's appropriate *patch* dir to APK Studio's
      project dir, it should be located next to your original APK file
      and looks like *com.ideomobile.hapoalim.apk-decompiled*
  7.  rebuild app from APK Studio (Project → Build)
  8.  sign it with your own keystore using APK Studio (Project → Sign)
  9.  uninstall original APK from your device
  10. put your APK (*com.ideomobile.hapoalim.apk-decompiled/dist/com.ideomobile.hapoalim.apk*)
      into your device (via ADB or MTP) and install it via file
      explorer

[java]: https://www.oracle.com/java/technologies/javase-jdk14-downloads.html
[keystore]: https://stackoverflow.com/a/15330139
[apk-studio]: https://github.com/vaibhavpandeyvpz/apkstudio/releases
[sai]: https://f-droid.org/en/packages/com.aefyr.sai.fdroid/
