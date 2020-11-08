#!/usr/bin/python3

import csv
import sys
from xml.dom import minidom

def generate_xml(strings, translates, language):
    for obj in strings.getElementsByTagName('string-array'):
        if obj.firstChild != None:
            key = obj.getAttribute("name")
            if key in translates and language in translates[key]:
                obj.getElementsByTagName('item')[0].firstChild.nodeValue = translates[key][language].replace("'", "\\'")
                obj.getElementsByTagName('item')[1].firstChild.nodeValue = translates[key][language].replace("'", "\\'")
    print(strings.toxml())

def print_spreadsheet(strings, translates):
    writer = csv.writer(sys.stdout)
    for obj in strings.getElementsByTagName('string-array'):
        key = obj.getAttribute("name")

        hebrew  = translates[key]["hebrew"]
        english = translates[key]["english"] if "english" in translates[key] else ""
        russian = translates[key]["russian"] if "russian" in translates[key] else ""

        writer.writerow([key, hebrew, english, russian])

if __name__ == "__main__":
    strings = minidom.parse('arrays.xml')

    translates = {}
    for obj in strings.getElementsByTagName('string-array'):
        key = obj.getAttribute("name")
        hebrew = obj.getElementsByTagName('item')[0].firstChild.nodeValue
        if obj.firstChild != None:
            translates[key] = { "hebrew": hebrew }

    with open('arrays.xml.csv') as f:
        csv_reader = csv.reader(f, delimiter=',')

        for row in csv_reader:
            key = row[0]
            hebrew = row[1].strip()
            english = row[2]
            russian = row[3]

            if key in translates:
                if translates[key]["hebrew"] == hebrew:
                    if len(english) > 0:
                        translates[key]["english"] = english
                    if len(russian) > 0:
                        translates[key]["russian"] = russian

    target = "english"
    if len(sys.argv) > 1:
        target = sys.argv[1]

    if target == "english":
        generate_xml(strings, translates, "english")
    elif target == "russian":
        generate_xml(strings, translates, "russian")
    elif target == "csv":
        print_spreadsheet(strings, translates)
    else:
        print("There is no target {}!".format(target))
