#!/bin/bash

USERID=$(id -u) 

# shell check condition the id and give to variable userid then write if condintion

if [ $USERID -ne 0 ]
then
    echo "please run this script with root acccess"
else
    echo "you are super user"
if

dnf install mysql -y 