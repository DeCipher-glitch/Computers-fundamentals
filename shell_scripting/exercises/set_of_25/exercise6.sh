#!/usr/bin/env bash

#using cut
cut -d: -f1 /etc/passwd

#using awk
awk -F: '{print $1}' /etc/passwd

#using sed
sed 's/:.*//' /etc/passwd

#using grep PCRE
grep -oP '^[^:]+' /etc/passwd

#using perl
perl -F: -ane 'print $F[0], "\n"' /etc/passwd
