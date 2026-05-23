!#/usr/bin/env bash

#what command(s) print(s) the first 5 lines of a file named data.csv?

#using head
head -n 5 data.csv

#using sed
sed -n '1,5p' data.csv

#using awk
awk 'NR<=5' data.csv

#using perl
perl -ne 'print if $. <= 5' data.csv

#using grep
grep -n data.csv | grep -E '^[1-5]:' | cut -d: -f2-
