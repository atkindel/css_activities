#!/usr/bin/env bash

# Clean up directory
cd data
rm -rf years
mkdir -p years

# awk script to find ngrams matching specific year
function find_year {
    echo -e "ngram\tyear\tmatch_count\tvolume_count" > years/$1.tsv
    awk -F\t -v year=$1 '$1 == year' ng2012.tsv >> years/$1.tsv
    grep '\d{4}\,.*' ng2012.tsv >> testout.tsv
}

# Find all year ngrams from 1700 onward
echo -e "ngram\tyear\tmatch_count\tvolume_count" > ngyears.tsv
grep '^[1-2][7-9][0-9][0-9]\t.*' ng2012.tsv >> ngyears.tsv
