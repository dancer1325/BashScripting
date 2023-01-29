#!/bin/bash
# Previous line is to call to bash interpreter

list=(Alfredo Maria Pepe Carol Noelia Antonio)

# 1. Run all list's elements via *
echo "Run via *"
for i in ${list[*]}     # list[*]   run through all list's elements
do
    echo $i
done

# 2. Run all list's elements via @
# Check https://tldp.org/LDP/abs/html/internalvariables.html#ARGLIST
echo "Run via @"
for i in ${list[@]}     # list[@]   run through all list's elements, without interpolating
do
    echo $i
done

# 3. Loop nested with conditional expression
echo "Loop nested with conditional expression"
for i in ${list[@]}     
do
    if [[ $i == A* ]]       # * is a regular expression https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_04_01.html
    then
        echo $i
    fi
done