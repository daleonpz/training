#!/bin/bash

# Challenge 'Go Forth' [Web]
file fl.bin
gzip -cd fl.bin

# Challenge 'Lorem Ipsum' [Web]
# sed: strips punctuation  and \r, I found that bastard with vim
# tr: change ' ' to '\n'
# awk is to get the row in which the first column == 1
cat lorem.txt | sed 's/[,.\r]//g' | tr ' ' '\n'  | sort | uniq -c | awk '$1==1'


# Challenge 'I'm So Special' [Web]
curl ifconfig.me

# Challenge '3280' [Coding]
cat rfc3280.txt | sed 's/[,.\r]//g' | tr ' ' '\n' | sort  | uniq -c | awk '{ print $1 "\t"  length($2) "\t" $2}' | awk '$2==9' | sort -k1 -n | tail -1 
