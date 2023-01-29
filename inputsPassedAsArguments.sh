#!/bin/bash
# Previous line is to call to bash interpreter

echo "Welcome to inputsPassedAsArguments.sh"

echo "Input1: $1"
echo "Input2: $2"
echo "All inputs: $*"
echo "All inputs as list: $@"
echo "# of inputs: $#"

# Execute it, passing inputs
# Example1: `bash inputsPassedAsArguments.sh aa bbbb cccc `