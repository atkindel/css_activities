#!/usr/bin/env python

import csv
import os

print "Starting..."

# Ngrams of interest to search for
years = ['1880', '1912', '1973']

# Determine which data files to read
files = []
for f in os.listdir("./data/clean"):
    if 'csv' in f:
        files.append(f)  # Get a list of all CSVs to scan
print files

# Scan data files for ngrams of interest
for f in files:
    print "Trying %s" % f
    with open("./data/clean/" + f) as d:
        rows = csv.DictReader(d)
        for row in rows:
            for year in years:
                if year == row['ngram']:
                    print year
                    print row['ngram']
                    print repr(row.keys())
                    print repr(row.values())
                    print ""
