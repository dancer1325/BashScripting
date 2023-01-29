#!/bin/bash
# Previous line is to call to bash interpreter

# Detect syntax errors
# It can stop script execution
# set -u 

number1=1
number2=2

number3=$((number1 + number2))
number4=let "number1 + number2"     # Value not assigned
number5=$((number1 - number2))
number6=$((number1 * number2))
number7=$((number1 / number2))
number8=$((number1 % number2))

echo "number3: " $number3
echo "number4: " $number4
echo "number5: " $number5
echo "number6: " $number6
echo "number7: " $number7               # Display 0, because it just returns natural numbers
echo "number8: " $number8

# Display all in 1! lie
echo "Display all in 1! line"
echo "number3: " $number3 " number4: " $number4 " number5: " $number5 " number6: " $number6 " number7: " $number7 " number8: " $number8 

# 1. Comparations based on logical comparators
if [ $number1!=$number2 ]           # Important to add whitespaces in the expression wrapped under []
then                                # Required for if structure
    echo "Case 1. $number1 different to $number2"
else
    echo "Case 1. $number1 is equal to $number2"
fi                                  # Close if structure

# 2. Comparations based on symbols 
# --> you need to use String
# 2.1 -ne not valid for pure string
# if [[ A -ne B ]]          
# if [[ 'A' -ne 'B' ]]
# if [[ '$A' -ne '$B' ]]            # Unvalid expression
if [[ "A" -ne "B" ]]      
then                                
    echo "Case 2.1 "$number1" different to $number2"
else
    echo "Case 2.1 $number1 is equal to $number2"
fi                                  # Close if structure

# 2.2 Just 1! []
# if [ "A" -ne "B" ]                # Unvalid expression for string
if [ "$number1" -ne "$number2" ]
then                                
    echo "Case 2.2 $number1 different to $number2"
else
    echo "Case 2.2 $number1 is equal to $number2"
fi      


# 2.3 Several [[]]
# Valid and evaluate properly
if [[ "$number1" -ne "$number2" ]]          
then                                
    echo "Case 2.3 $number1 different to $number2"
else
    echo "Case 2.3 $number1 is equal to $number2"
fi

# 3. File conditional operators
# 3.1 Absolute path
absolutePath='/Users/dancer13/'
if [ -d $absolutePath ]
then
    echo "$absolutePath exists and it's a directory"
else
    echo "$absolutePath does not exist or it's not a directory"
fi

# 3.2 Relative path
relativePath='/dancer13/'
if [ -d $relativePath ]
then
    echo "$relativePath exists and it's a directory"
else
    echo "$relativePath does not exist or it's not a directory"
fi

# 3.3 Folder's Rights with logical doors
# `ls -l` to display by command line file systems
absolutePath='/Users/dancer13/'
if [ -r $absolutePath ] && [ -w $absolutePath ]
then
    echo "$absolutePath has got read and write rights"
else
    echo "$absolutePath hasn't got read or write rights"
fi