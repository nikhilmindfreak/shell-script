#!/bin/bash

USERID=$(id -u) 

# write a function next to stop repeating the validation, then you can write condition, loop or anything

VALIDATE(){
if [ $1 -ne 0 ]
then 
    echo "$2.....failure"
    exit 1
else
    echo "$2 ..........success"  
fi
}

if [ $USERID -ne 0 ]
then
    echo "please run this script with root acccess"
    exit 1 
else
    echo "you are super user"
fi

dnf install mysql -y 
VALIDATE $? "Installing Mysql"

dnf install git -y
VALIDATE $? "Installing Git"

echo " is script proceeding"