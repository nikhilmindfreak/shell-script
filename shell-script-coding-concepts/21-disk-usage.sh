#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=6
MESSAGE=""

while IFS= read -r line
do
    USAGE=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1 )
    FOLDER=$(echo $line | awk -F " " '{print $NF}')
    if [ $USAGE -ge $DISK_THRESHOLD ]
    then
        MESSAGE+="$FOLDER is more than $DISK_THRESHOLD, Current usage: $USAGE \n"
    fi
done <<< $DISK_USAGE

echo -e "Message: $MESSAGE"

echo "$MESSAGE" | mail -s "Disk Usage Alert" nikhilmindfreak2727@gmail.com

# echo "body" | mail -s "subject" to-address
# Here
# += is used befor message to print all the lines not to over write the when we use loop
# /n & -e = is used for print lines in step wise not in one line
# -e= to print message in steps not in one line