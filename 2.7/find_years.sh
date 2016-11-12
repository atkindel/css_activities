#!/usr/bin/env bash

# Clean up directory
cd data
rm -rf years
mkdir -p years

# awk script to find ngrams matching year
function find_year {
    echo -e "ngram\tyear\tmatch_count\tvolume_count" > years/$1.tsv
    awk -F\t -v year=$1 '$1 == year' ng2012.tsv >> years/$1.tsv
}

# Find years of interest
find_year 1883
find_year 1910
find_year 1950
