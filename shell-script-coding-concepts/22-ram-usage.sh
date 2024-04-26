#!/bin/bash

MEM_USAGE=$(free -m | grep Mem:)
MEM_THRESHOLD=
MESSAGE=""

while IFS= read -r line
do
    USAGE=$(echo $line | awk -F " " '{print $7F}')
    FOLDER=$(echo $line | awk -F " " '{print $NF}')
    if [ $USAGE -ge $MEM_THRESHOLD ]
    then
        MESSAGE+="$FOLDER is more than $MEM_THRESHOLD, Current usage: $USAGE \n"
    fi
done <<< $MEM_USAGE

