#!/bin/bash
# Previous line is to call to bash interpreter

name="Alfredo"
name2= 'Alfredo'            # Not accepted whitespace
name3='Alfredo'             # Possible to declare string, with ''
number=5

# Making math operations to number variable
echo "number: " $number
# 1. wrapping under (())
((number+=1))
((number++))
echo "number: " $number
# 2. wrapping under let ""
let "number+=1"
let "number++"
echo "number: " $number

# Get command's output
# 1.  $() -- indicates something to be executed
result1=$(ps -ef | grep bash | grep -v grep)
# 2.  `` -- indicates something to be executed
result2=`(ps -ef | grep bash | grep -v grep)`

echo "name: " $name
echo "name2: " $name2
echo "name3: " $name3
echo "result1: " $result1
echo "result2: " $result2
