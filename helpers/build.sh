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

keystore=hapoalim.keystore
alias=hapoalim
storepass=hapoalim
keypass=hapoalim

[ -e "${keystore}" ] || \
  keytool -genkey -keystore "${keystore}" -keyalg RSA -keysize 2048 \
          -validity 10000 -alias "${alias}" \
          -dname "cn=Unknown, ou=Unknown, o=Unknown, c=Unknown" \
          -storepass "${storepass}" -keypass "${keypass}"

java -Xmx256m -jar uber-apk-signer-1.1.0.jar \
              --ks "${keystore}" \
              --ksAlias "${alias}" \
              --ksPass "${storepass}" \
              --ksKeyPass "${keypass}" \
              -a "${targetdir}/dist/${apkname}" \
              --allowResign \
              --overwrite

cp "${targetdir}/dist/${apkname}" "../${target}.apk"
