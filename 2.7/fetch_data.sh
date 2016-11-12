#!/usr/bin/env bash

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
