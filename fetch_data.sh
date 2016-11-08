#!/usr/bin/env bash

# Get data from Google
# TODO

# Uncompress data
for i in $( ls ); do
    unzip $i
done

# Remove archives
rm *.zip
