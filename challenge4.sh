#!/bin/bash
# Previous line is to call to bash interpreter

# Goal
# 1. Inputs
# 1.1 Function to execute against the file
# 1.2 File
# 2. Nested conditional (>5 characters) to check the folders generation 


case $1 in
    [Cc]heck)                                   #[Cc] handle either lower or capital letter     
        echo "Check the folders"
        i=0
        while [ $i -lt ${#directories[*]} ]         # -lt === Lower Than https://tldp.org/LDP/abs/html/comparison-ops.html
        do
            if [ -d ${directories[$i]} ]            # -d    It's a operator file https://tldp.org/LDP/abs/html/refcards.html#AEN22593
            then
                echo "${directories[$i]} exist"
            else    
                echo "${directories[$i]} does not exist"
            fi
            ((i++))                                 # Necessary to avoid having infinite while loop
        done
    ;;
    [Mm]ake)                                   
        echo "Create folders"
        i=0                                        # Each line contains just 1! element
        while read line
        do
            if [ -d $line ]                        # -d Check if the file is a directory. https://tldp.org/LDP/abs/html/refcards.html#AEN22593
            then
                echo "Directory $x already exists"
            else
                if [ ${#line[$i]} -gt 5 ]          # -gt === Greater than. https://tldp.org/LDP/abs/html/refcards.html#AEN22473  
                then
                    echo "The directory $line can not be created, since it's length is > 5"
                else
                    echo "Create the directory"
                    #mkdir -d $x || mkdir $x           # Use another OS's command.  mkdir -d  if a sequential folder is going to be created
                    mkdir $line
                fi    
            fi
        done < $2
    ;;
    *)
        echo "Error: You must pass check or make"
esac


# Test it, passing an argument with the file path for the execution
# bash challenge4.sh check sample2.txt
# bash challenge4.sh Check sample2.txt
# bash challenge4.sh make sample2.txt
# bash challenge4.sh aaaaaa sample2.txt