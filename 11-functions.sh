#!/bin/bash

USERID=$(id -u) 

# write a function next to stop repeating the validation, then you can write condition, loop or anything

validate(){
if [ $1 -ne 0]
then 
    echo "$2.....failure"
    exit 1  
fi
}

if [ $USERID -ne 0 ]
then
    echo "please run this script with root acccess"
    exit 1 
    echo "you are super user"
fi

dnf install mysql -y 



if [ $? -ne 0 ]  
then
    echo "Installion of mysql is failure"
    exit 1 
else
    echo "Installion of mysql is success"
fi


echo " is script proceeding"