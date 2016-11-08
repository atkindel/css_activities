#!/usr/bin/env python

import csv
import os

print "Starting..."

years = ['1880', '1912', '1973']

files = []
for f in os.listdir("./data/clean"):
    if 'csv' in f:
        files.append(f)  # Get a list of all CSVs to scan

print files

for f in files:
    print "Trying %s" % f
    with open("./data/clean/" + f) as d:
        rows = csv.DictReader(d)
        for row in rows:
            for year in years:
                if year == row['ngram']:
                    print row
