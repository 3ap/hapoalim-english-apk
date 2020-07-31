#!/bin/sh
set -efux

curl -L "https://docs.google.com/spreadsheets/d/1sYOnptgxa07OjTEfMGcHCy8G9dLBG7KiZJPDwC-onSs/export?format=csv&id=1sYOnptgxa07OjTEfMGcHCy8G9dLBG7KiZJPDwC-onSs&gid=291457640" > mutual_dictionary.json.csv
curl -L "https://docs.google.com/spreadsheets/d/1sYOnptgxa07OjTEfMGcHCy8G9dLBG7KiZJPDwC-onSs/export?format=csv&id=1sYOnptgxa07OjTEfMGcHCy8G9dLBG7KiZJPDwC-onSs&gid=2102231209" > strings.xml.csv

./strings.py russian > ../patch/res/values/strings.xml
unix2dos ../patch/res/values/strings.xml
./mutual_dictionary.py russian > ../patch/assets/static/mutual_dictionary.json
