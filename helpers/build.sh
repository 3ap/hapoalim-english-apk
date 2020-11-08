#!/bin/sh
set -efux

apk=../hapoalim-20201106.apk
tempdir=../hapoalim-20201106.apk-decompiled

rm -rf "${tempdir}"
java -Xmx256m -jar apktool_2.4.1.jar d -o "${tempdir}" "${apk}"

cp -r ../patch/30.7.1/assets \
      ../patch/30.7.1/res \
      ../patch/30.7.1/smali_classes2 \
      ../patch/30.7.1/AndroidManifest.xml \
      "${tempdir}"

ag "com\.ideomobile\.hapoalim" -l -r "${tempdir}" | tr -d '\r' | sort | uniq | xargs -P 8 -I {} sed -i'' -b 's,com\.ideomobile\.hapoalim,com\.ideomobile\.hapoalimalt,g' {}
ag "Lcom/ideomobile/hapoalim"  -l -r "${tempdir}" | tr -d '\r' | sort | uniq | xargs -P 8 -I {} sed -i'' -b 's,Lcom/ideomobile/hapoalim,Lcom/ideomobile/hapoalimalt,g' {}
#mv "${tempdir}/smali_classes2/com/ideomobile/hapoalim" "${tempdir}/smali_classes2/com/ideomobile/hapoalimalt"

java -Xmx256m -jar apktool_2.4.1.jar b "${tempdir}"

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
              -a "${tempdir}/dist/hapoalim-20201106.apk" \
              --allowResign \
              --overwrite
