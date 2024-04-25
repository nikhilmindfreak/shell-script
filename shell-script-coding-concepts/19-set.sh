#!/bin/bash

set -e  # replaced validate command set will automatically check all commands and exits if something is wrong

failure(){
    echo "Failed at $1: $2"
}

trap 'failure ${LINENO} "$BASH_COMMAND"' ERR # to check

USERID=$(id -u) #ERR

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root access."
    exit 1 # manually exit if error comes.
else
    echo "You are super user."
fi

dnf install mysql -y
dnf install git -y

echo "is script proceeding?"
