#!/usr/bin/env bash

#Find all lines in auth.log that *start* with the word "Failed".

#using grep
grep '^Failed' /var/log/auth.log

#using awk
awk '/^Failed/' /var/log/auth.log
