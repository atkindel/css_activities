#!/usr/bin/env bash
# Script to pull first-wave Google NGrams data and clean up.
# Author: Alex Kindel
# Date: 7 November 2016

# Get data from Google
cd data
for i in {0..9}
do
    curl http://storage.googleapis.com/books/ngrams/books/googlebooks-spa-all-1gram-20090715-$i.csv.zip > zf$i.csv.zip
done

# Uncompress data
for i in $( ls ); do
    unzip $i
done

# Remove archives
rm *.zip

# Add header
for i in {0..9}
do
    #cat zf$i.csv | tr "\\t" "," > f$i.csv;  # Convert to CSV
    echo -e "ngram\tyear\tmatch_count\tpage\tcount\tvolume_count" | cat - f$i.csv > clean/ngrams_$i.tsv;
    rm f$i.csv;
done
