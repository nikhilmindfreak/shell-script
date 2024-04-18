#!bin/bash

echo "please enetr username"

read -s USERNAME  #here USERNAME is varioable, -s is used to hide whhat you write in linux

echo "please enter password::"

read -s PASSWORD

echo -s "username is : $USERNAME , password is : $PASSWORD"