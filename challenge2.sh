#!/bin/bash
# Previous line is to call to bash interpreter

user=$(whoami)      # System variable about the user which executes the script
echo "Your user name is $user"

read -p "If you whish changing your user name, type another one. If not, press enter to skip it " newName

# -z Operator to check if the string isn't empty
#if [ -z newName ]          # Since I did't indicate $ --> don't pick the variable --> always not empty
if [ -z $newName ]
then
    echo "You didn't pass interactively an input. Check $newName"
else
    echo "Passed interactively an input. Check $newName"
fi