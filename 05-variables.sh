#!bin/bash

echo "please enetr username"

read -s USERNAME  #here USERNAME is varioable, -s is used to hide whhat you write in linux
# read is for storing 
echo "please enter password::"

read -s PASSWORD

echo "username is : $USERNAME , password is : $PASSWORD"

# short cut = read -p "enter username: " username