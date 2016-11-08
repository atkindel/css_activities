#!/usr/bin/env bash

cd data
for i in {0..9}
do
    cat zf$i.csv | tr "\\t" "," > f$i.csv;
    echo -e "ngram,year,match_count,page_count,volume_count" | cat - f$i.csv > clean/hf$i.csv;
    rm f$i.csv;
done
