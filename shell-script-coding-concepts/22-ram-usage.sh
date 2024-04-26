#!/bin/bash

MEM_USAGE=$(free -m | grep Mem:)
MEM_THRESHOLD=400
MESSAGE=""

while IFS= read -r line
do
    USAGE=$(echo $line | awk -F " " '{print $7F}')
    if [ $USAGE -ge $MEM_THRESHOLD ]
    then
        MESSAGE="$FOLDER is more than $MEM_THRESHOLD, Current usage: $USAGE"
    fi
done <<< $MEM_USAGE

echo "Message: $MESSAGE"