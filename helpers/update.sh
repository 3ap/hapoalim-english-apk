#!/bin/sh
set -efux

curl -L "https://docs.google.com/spreadsheets/d/1sYOnptgxa07OjTEfMGcHCy8G9dLBG7KiZJPDwC-onSs/export?format=csv&id=1sYOnptgxa07OjTEfMGcHCy8G9dLBG7KiZJPDwC-onSs&gid=433770505" > mutual_dictionary_new.json.csv
curl -L "https://docs.google.com/spreadsheets/d/1sYOnptgxa07OjTEfMGcHCy8G9dLBG7KiZJPDwC-onSs/export?format=csv&id=1sYOnptgxa07OjTEfMGcHCy8G9dLBG7KiZJPDwC-onSs&gid=445215103" > strings.xml.csv
curl -L "https://docs.google.com/spreadsheets/d/1sYOnptgxa07OjTEfMGcHCy8G9dLBG7KiZJPDwC-onSs/export?format=csv&id=1sYOnptgxa07OjTEfMGcHCy8G9dLBG7KiZJPDwC-onSs&gid=687797133" > arrays.xml.csv

version=30.9.0
patchdir="../patch/30.9.0"
language=english

./mutual_dictionary.py "${language}" > "${patchdir}/assets/static/mutual_dictionary_new.json"

mkdir -p "${patchdir}/res/values"
./arrays.py "${language}" > "${patchdir}/res/values/arrays.xml"
./strings.py "${language}" > "${patchdir}/res/values/strings.xml"

sed -i -e 's/<?xml version="1.0" ?><resources>/<?xml version="1.0" encoding="utf-8"?>\n<resources>/g' "${patchdir}/res/values/strings.xml"

sed -i -e 's/<?xml version="1.0" ?><resources>/<?xml version="1.0" encoding="utf-8"?>\n<resources>/g' "${patchdir}/res/values/arrays.xml"
sed -i -e 's,<array name="null_"/>,<array name="null_" />,g' "${patchdir}/res/values/arrays.xml"
sed -i -e 's/&quot;/"/g' "${patchdir}/res/values/arrays.xml"

./mutual_dictionary.py csv > new-mutual_dictionary_new.csv
./arrays.py csv > new-arrays.xml.csv
./strings.py csv > new-strings.xml.csv
