#!/usr/bin/env bash
# Script to pull Google NGrams data and clean up.
# Author: Alex Kindel
# Date: 7 November 2016

# Retrieve ngram data
mkdir -p data
cd data
curl http://storage.googleapis.com/books/ngrams/books/googlebooks-eng-all-1gram-20120701-1.gz > ng2012.gz
gunzip ng2012.gz > ng2012.tsv
