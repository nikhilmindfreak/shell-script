#!/bin/bash

NO1=$1
NO2=$2

SUM=$(($NO1+$NO2))

echo "total of $NO1 and $NO2 is: $SUM"

# we used variable $ here but we are passing the argument from outside 
# we are doing arthamtic operators here
# # when we $ the shell treats as an expression
# $1 and $2 is the outside passing argument
# if you give 0 and nikhil the shells reponds with answer 0 as shell knows differnce in name and numbers
