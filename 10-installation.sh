#!/bin/bash

USERID=$(id -u) 

# shell check condition the id and give to variable userid then write if condintion

if [ $USERID -ne 0 ]
then
    echo "please run this script with root acccess"
    exit 1 # we need write exit other than zero so write exit 1- 127 any number
else
    echo "you are super user"
fi

dnf install mysql -y 

# we should give a step here to check if the command is succes

if [ $? -ne 0 ]  # $? is for to checkd previous command is success
then
    echo "Installion of mysql is failure"
    exit 1 # we need write exit other than zero so write exit 1- 127 any number
else
    echo "Installion of mysql is success"
fi


echo " is script proceeding"

