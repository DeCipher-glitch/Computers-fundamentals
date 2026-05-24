#!/usr/bin/env bash

#count how many total files and folders are inside your current directory

#using find
find . -maxdepth 1 | wc -l
find . -maxdepth 1 | tail -n +2 | wc -l

#using ls and wc
ls -1 | wc -l

#using echo
echo $(ls -A)
