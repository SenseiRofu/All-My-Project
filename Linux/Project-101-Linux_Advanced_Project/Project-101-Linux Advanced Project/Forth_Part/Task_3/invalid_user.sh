#!/bin/bash
user=$(awk -F: '/Invalid user/ {print $4}' auth.log | cut -d ' ' -f4 | sort | uniq)

user_file=$(awk -F: '/Invalid user/ {print $4}' auth.log | cut -d ' ' -f4 | sort | tee user.txt)

for i in $user
do
    echo "$i : $(grep -wc $i user.txt)" 
done