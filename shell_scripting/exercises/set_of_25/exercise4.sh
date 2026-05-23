#!/usr/bin/env bash

#extract just the 1st and 3rd columns of a file delimited by commas (,) named info.csv

#using cut
cut -d',' -f1,3 info.csv

#using awk
awk -F',' '{print $1","$3}' info.csv

#using perl
perl -F',' -lane 'print "$F[0],$F[2]"' info.csv

#using sed and cut
sed 's/"/""/g' info.csv | cut -d',' -f1,3
