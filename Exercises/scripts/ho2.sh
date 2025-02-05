#!/bin/sh

# 1) Go to the directory and list the files
cd ../data/ho2/ && ls -l

# 2) Count lines that start with a ","

grep -E "^," happiness.csv | wc -l

# 3) Convert csv into tsv

sed 's/,/\t/g' happiness.complete.csv > happiness.complete.tsv

# 4a) Count unique countries

cut -f1 happiness.complete.tsv | sed 1d | sort | uniq | wc -l

# 4b) Count how many entries of each gender

cut -f2 happiness.complete.tsv | sed 1d | sort | uniq -c

# 4c) Replace all spaces with “_” within the same file

sed -i '' 's/ /_/g' happiness.complete.tsv

# 4d) Write a new file in which all the countries are written in lowercase

awk '{print tolower($1) "\t" $2 "\t" $3 "\t" $4}' happiness.complete.tsv > happiness.complete.lower.tsv

# 4e) Replace gender column

sed -e 's/Male/M/' -e 's/Female/F/' -e 's/Both/B/' happiness.complete.tsv | head -10

# 4f) New file with "Both" entries from the countries in the list

grep -f countries.txt happiness.complete.tsv | awk -F " " '/Both/ {print $4 "\t" $3 "\t" $1}' > happiness.complete.both.countries.tsv
