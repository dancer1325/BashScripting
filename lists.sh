#!/bin/bash
# Previous line is to call to bash interpreter

# Declare a list
list=(one two three)
# Add another element
list[3]="four"
list[7]="eight"                                     # No problem if there are empty list's entries. They will be empty

echo "list[0]: " $list                              # Get just the first element
echo "list[0]: " ${list[0]}                         # Get just the first element
echo "list[1]: " ${list[1]}                         # Get just the second element
echo "list[7]: " ${list[7]}                         # Get just the eigth element
echo "list[3]: " ${list[3]}                         # Get just the fourth element
echo "list[4]: " ${list[4]}                         # Get just the fifth element
echo "list[5]: " ${list[5]}                         # Get just the sixth element
echo "list[6]: " ${list[6]}                         # Get just the seventh element
echo "list[9]: " ${list[9]}                         # Get non existing element in the list
echo "list's elements: " ${list[*]}                 # Get all list's elements
echo "list's number of elements: " ${#list[*]}      # Get number of elements in the list
echo "list's first element length: " ${#list[0]}    # Get first element's length


# if
if [ $? -eq 0 ]                                     # $?  Previous command's output     0 === OK,  1 & 2 === KO
#if [$? -eq 0]                                      # Unvalid to put together [], introduce a whitespace
then                                                # Mandatory
    echo "Previous command has ended OK"
else    
    echo "Previous command has ended KO"
fi                                                  # Mandatory to close if