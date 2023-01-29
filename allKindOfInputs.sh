#!/bin/bash
# Previous line is to call to bash interpreter

# Include all kind of inputs

echo "Welcome to inputsPassedAsArguments.sh"

echo "Input1: $1"
echo "Input2: $2"
echo "Input3: $3"           
echo "All inputs: $*"
echo "All inputs as list: $@"
echo "# of inputs: $#"

# Interactive inputs, passed during script's execution

echo "Pass another input "
read anotherInput

# We have got another input now
echo "Input1: $1"
echo "Input2: $2"
echo "Input3: $3"                   # Argument passed interactively is not added to the previous list
echo "anotherInput: $anotherInput"
echo "All inputs: $*"               # Argument passed interactively is not added to the previous list
echo "All inputs as list: $@"       # Argument passed interactively is not added to the previous list
echo "# of inputs: $#"              # Argument passed interactively is not added to the previous list

# Execute it, passing inputs
# Example1: bash allKindOfInputs.sh aa bbbb