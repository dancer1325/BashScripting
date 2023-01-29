#!/bin/bash
# Previous line is to call to bash interpreter

# Counter variable
i=5

echo "Count down"

# 1. In several lines
while (( i>=1 ))
do
    echo "i: $i"
    sleep 1             # Wait for 1 second
    ((i--))             # Decrease i, 1 unit
done

# 2. In 1! line
while (( i==0 )); do  echo "i: $i"; ((i--)); done

# 3. Infinite loop
# while true
# do
#     echo "Infinite loop"
#     sleep 1
# done