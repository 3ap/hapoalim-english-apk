#!/usr/bin/python3

import csv
import sys
import json

def generate_json(mutual_dictionary, translates, language):
    for obj in mutual_dictionary["dictionary"]:
        key = obj["key"]

        if key in translates and language in translates[key]:
            obj["male"] = translates[key][language]
            obj["female"] = translates[key][language]

    dump = json.dumps(mutual_dictionary, ensure_ascii = False, indent = 4)
    dump = dump.replace("\\\\n", "\\n")
    print(dump)

def print_spreadsheet(mutual_dictionary, translates):
    writer = csv.writer(sys.stdout)
    for obj in mutual_dictionary["dictionary"]:
        key = obj["key"]

        hebrew  = translates[key]["hebrew"]
        english = translates[key]["english"] if "english" in translates[key] else ""
        russian = translates[key]["russian"] if "russian" in translates[key] else ""

        writer.writerow([key, hebrew, english, russian])

if __name__ == "__main__":
    mutual_dictionary = {}
    with open('mutual_dictionary_new.json') as f:
        mutual_dictionary = json.load(f)

    translates = {}
    for obj in mutual_dictionary["dictionary"]:
        translates[obj["key"]] = { "hebrew": obj["male"].replace('\n', '\\n').strip() }

    with open('mutual_dictionary_new.json.csv') as f:
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
        generate_json(mutual_dictionary, translates, "english")
    elif target == "russian":
        generate_json(mutual_dictionary, translates, "russian")
    elif target == "csv":
        print_spreadsheet(mutual_dictionary, translates)
    else:
        print("There is no target {}!".format(target))
