#!/usr/bin/env bash
# Script to pull Google NGrams data and clean up.
# Author: Alex Kindel
# Date: 7 November 2016

# Retrieve ngram data
mkdir -p data
cd data
curl http://storage.googleapis.com/books/ngrams/books/googlebooks-eng-all-1gram-20120701-1.gz > ng2012.gz
gunzip ng2012.gz
mv ng2012 ng2012.tsv

# Retrieve total counts
curl http://storage.googleapis.com/books/ngrams/books/googlebooks-eng-all-totalcounts-20120701.txt > tc.csv
cat tc.csv | tr "\\t" "\\n" | tail -n +2 > tcn.csv
echo -e "year,match_count,page_count,volume_count" | cat - tcn.csv > total_counts.csv
rm tc.csv
rm tcn.csv
