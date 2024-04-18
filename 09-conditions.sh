#!/bin/bash

NUMBER=$1

if [ $NUMBER -gt 10 ]
then
    echo "Given number $NUMBER is greater than 10"
else
    echo "Given number $NUMBER is less than 10" 
fi

# -gt=greater than -lt = less than -eq= equal to -ge= greater than equal to -le= less than equal to