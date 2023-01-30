#!/bin/bash
# Previous line is to call to bash interpreter


file=$1             # Pass path to the file as script's input
words=`cat $file`   # List with all the words, taken separated by the whitespace, even if there are several
for word in $words  # Run through all the list of words in the file
do
    echo "$word"
done 

# Test it, passing an argument with the file path for the execution
# bash readfile2.sh