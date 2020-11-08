#!/bin/sh
set -efux

curl -L "https://docs.google.com/spreadsheets/d/1sYOnptgxa07OjTEfMGcHCy8G9dLBG7KiZJPDwC-onSs/export?format=csv&id=1sYOnptgxa07OjTEfMGcHCy8G9dLBG7KiZJPDwC-onSs&gid=433770505" > mutual_dictionary_new.json.csv
curl -L "https://docs.google.com/spreadsheets/d/1sYOnptgxa07OjTEfMGcHCy8G9dLBG7KiZJPDwC-onSs/export?format=csv&id=1sYOnptgxa07OjTEfMGcHCy8G9dLBG7KiZJPDwC-onSs&gid=445215103" > strings.xml.csv
curl -L "https://docs.google.com/spreadsheets/d/1sYOnptgxa07OjTEfMGcHCy8G9dLBG7KiZJPDwC-onSs/export?format=csv&id=1sYOnptgxa07OjTEfMGcHCy8G9dLBG7KiZJPDwC-onSs&gid=687797133" > arrays.xml.csv

patchdir=../patch/30.7.1

./mutual_dictionary.py "english" > "${patchdir}/assets/static/mutual_dictionary_new.json"

mkdir -p "${patchdir}/res/values-en"
mkdir -p "${patchdir}/res/values-ru"

./arrays.py "english" > "${patchdir}/res/values-en/arrays.xml"
./arrays.py "russian" > "${patchdir}/res/values-ru/arrays.xml"

./strings.py "english" > "${patchdir}/res/values-en/strings.xml"
./strings.py "russian" > "${patchdir}/res/values-ru/strings.xml"

sed -i -e 's/<?xml version="1.0" ?><resources>/<?xml version="1.0" encoding="utf-8"?>\n<resources>/g' "${patchdir}/res/values-en/strings.xml"
sed -i -e 's/<?xml version="1.0" ?><resources>/<?xml version="1.0" encoding="utf-8"?>\n<resources>/g' "${patchdir}/res/values-ru/strings.xml"

unix2dos "${patchdir}/res/values-en/strings.xml"
unix2dos "${patchdir}/res/values-ru/strings.xml"

./mutual_dictionary.py csv > new-mutual_dictionary_new.csv
./arrays.py csv > new-arrays.xml.csv
./strings.py csv > new-strings.xml.csv
