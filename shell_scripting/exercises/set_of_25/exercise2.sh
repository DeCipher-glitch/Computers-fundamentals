!#/usr/bin/env bash

#count how many total lines contain the word "CRITICAL" in server.log

#using grep
grep -c "CRITICAL" server.log

#using grep and wc
grep "CRITIOCAL" server.log | wc -l

#using awk
awk '/CRITICAL/ {count++} END {print count}' server.log

#using sed and wc
sed -n '/CRITICAL/p' server.log | wc -l

#using perl
perl -ne '$c++ if /CRITICAL/; END {print "$c\n"}'
