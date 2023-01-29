#!/bin/bash
# Previous line is to call to bash interpreter

directories=(/Users /Users/dancer13 /Users/dancer13/Documents)              # List of directories

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
        for x in ${directories[@]}
        do
            if [ -d $x ]
            then
                echo "Directory $x already exists"
            else    
                echo "Create the directory"
                #mkdir -d $x || mkdir $x             # Use another OS's command.  mkdir -d  if a sequential folder is going to be created
                mkdir $x
            fi
        done
    ;;
    *)
        echo "Error: You must pass check or make"
esac




# Test it, passing an argument for the execution
# bash challenge3.sh 
# bash challenge3.sh check
# bash challenge3.sh Check
# bash challenge3.sh make   -- If you want to create a new directory, executing this line, just extend the list