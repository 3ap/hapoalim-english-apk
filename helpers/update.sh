#!/bin/sh
set -efux

curl -L "https://docs.google.com/spreadsheets/d/1sYOnptgxa07OjTEfMGcHCy8G9dLBG7KiZJPDwC-onSs/export?format=csv&id=1sYOnptgxa07OjTEfMGcHCy8G9dLBG7KiZJPDwC-onSs&gid=1767666048" > mutual_dictionary_new.json.csv
curl -L "https://docs.google.com/spreadsheets/d/1sYOnptgxa07OjTEfMGcHCy8G9dLBG7KiZJPDwC-onSs/export?format=csv&id=1sYOnptgxa07OjTEfMGcHCy8G9dLBG7KiZJPDwC-onSs&gid=1188773261" > strings.xml.csv
curl -L "https://docs.google.com/spreadsheets/d/1sYOnptgxa07OjTEfMGcHCy8G9dLBG7KiZJPDwC-onSs/export?format=csv&id=1sYOnptgxa07OjTEfMGcHCy8G9dLBG7KiZJPDwC-onSs&gid=1892509359" > arrays.xml.csv

version=40.3.0
patchdir=../patch/40.3.0
language=russian

# Copy original files
cp -v "${patchdir}/res/values/arrays.xml" .
cp -v "${patchdir}/res/values/strings.xml" .
cp -v "${patchdir}/assets/static/mutual_dictionary_new.json" .

# Translate them using Google Spreadsheets
./mutual_dictionary.py "${language}" > "${patchdir}/assets/static/mutual_dictionary_new.json"
./arrays.py "${language}" > "${patchdir}/res/values/arrays.xml"
./strings.py "${language}" > "${patchdir}/res/values/strings.xml"

# Fix several issues
sed -i -e 's/<?xml version="1.0" ?><resources>/<?xml version="1.0" encoding="utf-8"?>\n<resources>/g' "${patchdir}/res/values/strings.xml"
sed -i -e 's/<?xml version="1.0" ?><resources>/<?xml version="1.0" encoding="utf-8"?>\n<resources>/g' "${patchdir}/res/values/arrays.xml"
sed -i -e 's,<array name="null_"/>,<array name="null_" />,g' "${patchdir}/res/values/arrays.xml"
sed -i -e 's/&quot;/"/g' "${patchdir}/res/values/arrays.xml"

# Regenerate CSV
./mutual_dictionary.py csv > new-mutual_dictionary_new.csv
./arrays.py csv > new-arrays.xml.csv
./strings.py csv > new-strings.xml.csv
