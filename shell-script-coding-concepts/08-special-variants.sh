#!/bin/bash

echo "All variables: $@"
echo "Number of variables passed: $#"
echo "Script Name: $0"
echo "Current working directory: $PWD"
echo "Home directory of current user: $HOME"
echo "Which user is running this script: $USER"
echo "Hostname: $HOSTNAME"
echo "Process ID of the current shell script: $$"
echo "Process ID of last background command: $!"
echo "exit status of previous command: $? "

# $@ is the symobol to print all variables , only @ is used to print everything
# $# is the symbol to print how many variables, # is nothing but notation of number
# $0 is the symbole to print script name
# $PWD is the sybol to print current directory
# $home is the symbol to print home directory of current user
# $USER is the symbol print which user is running this script
# $HOSTNAME 