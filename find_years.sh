#!/usr/bin/env bash

cd data/clean

# 1800
for i in {0..9}
do
    awk -F, '$1 == 1880' hf$i.csv >> 1880.csv
done

# 1910
for i in {0..9}
do
    awk -F, '$1 == 1910' hf$i.csv >> 1910.csv
done

# 1973
for i in {0..9}
do
    awk -F, '$1 == 1973' hf$i.csv >> 1973.csv
done
