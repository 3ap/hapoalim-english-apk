#!/bin/sh
set -efux

apk=../hapoalim-20201106.apk
apkname=$(basename "${apk}")
target=com.ideomobile.hapoalimru
targetdir="../${target}-decompiled"

rm -rf "${targetdir}"
java -Xmx256m -jar apktool_2.4.1.jar d -o "${targetdir}" "${apk}"

cp -r ../patch/30.7.1/assets \
      ../patch/30.7.1/res \
      ../patch/30.7.1/smali_classes2 \
      ../patch/30.7.1/AndroidManifest.xml \
      "${targetdir}"

ag "com/ideomobile/hapoalim"  -l -r "${targetdir}"  | tr -d '\r' | sort | uniq | xargs -P 8 -I {} sed -i'' -b 's,com/ideomobile/hapoalim,com/ideomobile/hapoalimru,g' {}
ag "com\.ideomobile\.hapoalim" -l -r "${targetdir}" | tr -d '\r' | sort | uniq | xargs -P 8 -I {} sed -i'' -b 's,com\.ideomobile\.hapoalim,com\.ideomobile\.hapoalimru,g' {}

java -Xmx256m -jar apktool_2.4.1.jar b "${targetdir}"

keystore=debug.keystore
alias=androiddebugkey
storepass=android
keypass=android

[ -e "${keystore}" ] || \
  keytool -genkey -keystore "${keystore}" -keyalg RSA -keysize 2048 \
          -validity 10000 -alias "${alias}" \
          -dname "cn=Unknown, ou=Unknown, o=Unknown, c=Unknown" \
          -storepass "${storepass}" -keypass "${keypass}"

java -Xmx256m -jar uber-apk-signer-1.1.0.jar \
              --ksDebug "${keystore}" \
              -a "${targetdir}/dist/${apkname}" \
              --allowResign \
              --overwrite

cp "${targetdir}/dist/${apkname}" "../${target}.apk"
