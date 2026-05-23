!#/usr/bin/env bash

#print the last 15 lines of a log file, and keep it open to watch new entries appear in real-time

#using tail
tail -n 15 -f server.log
tail -f -n 15 server.log
tailf -n 15 server.log

#using less
less +F server.log

#using watch and tail
watch -n 1 tail -n 15 server.log
