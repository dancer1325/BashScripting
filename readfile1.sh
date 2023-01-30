#!/bin/bash
# Previous line is to call to bash interpreter


file=$1             # Pass path to the file as script's input
position=1          # First line of the file
while read line     # line or any variable to be declared
do
    echo "Line number $position: $line"
    ((position++))
done < $file

# Test it, passing an argument with the file path for the execution
# bash readfile1.sh