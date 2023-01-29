#!/bin/bash
# Previous line is to call to bash interpreter

# Show the power of read function

echo "Welcome to read.sh"

echo "What is your name?"
read name

# -p    Display a prompt, without trailing newline
read -p "What is your surname? " surname

# Getting variable's value
# 1. '' --> don't allow getting variable's value
echo 'Your name is $name and surname $surname'

# 2. " " --> allows getting variable's value
echo "Your name is $name and surname $surname"