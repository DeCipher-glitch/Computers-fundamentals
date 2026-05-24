#!/usr/bin/env bash

#take a raw list of usernames in raw.txt, sort them alphabetically, and remove all duplicate entries

#using sort
sort -u raw.txt > sorted.txt

#using sort and uniq
sort raw.txt | uniq > sorted.txt

#using awk
awk '!seen[$0]++' raw.txt > sorted.txt

#using perl
perl -ne 'print unless $seen{$_}++' raw.txt > sorted.txt
