#!/bin/sh
set -efux

apktool=./apktool_2.7.0.jar

version=41.7.0
apk="../hapoalim-${version}.apk"
tempdir="../hapoalim-${version}.apk-decompiled"

rm -rf "${tempdir}"
java -Xmx256m -jar "${apktool}" d -o "${tempdir}" "${apk}"

cp -r "../patch/${version}/assets" \
      "../patch/${version}/res" \
      "../patch/${version}/smali_classes3" \
      "${tempdir}"

#ag "com\.ideomobile\.hapoalim" -l -r "${tempdir}" | tr -d '\r' | sort | uniq | xargs -P 8 -I {} sed -i'' -b 's,com\.ideomobile\.hapoalim,com\.ideomobile\.hapoalimalt,g' {}
#ag "Lcom/ideomobile/hapoalim"  -l -r "${tempdir}" | tr -d '\r' | sort | uniq | xargs -P 8 -I {} sed -i'' -b 's,Lcom/ideomobile/hapoalim,Lcom/ideomobile/hapoalimalt,g' {}

java -Xmx256m -jar "${apktool}" b "${tempdir}"

keystore=debug.keystore

[ -e "${keystore}" ] || \
  keytool -genkey -v -keystore "${keystore}" \
          -storepass android -alias androiddebugkey \
          -keypass android -keyalg RSA -keysize 2048 \
          -validity 10000 -dname "C=US, O=Android, CN=Android Debug"

java -Xmx256m -jar uber-apk-signer-1.3.0.jar \
              --ksDebug "${keystore}" \
              -a "${tempdir}/dist/hapoalim-${version}.apk" \
              --allowResign \
              --overwrite
