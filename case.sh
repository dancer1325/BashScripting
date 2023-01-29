#!/bin/bash
# Previous line is to call to bash interpreter

# $1    First argument passed executing the script
case $1 in
    [Ss]tart)                       #[Ss] handle either lower or capital letter
    echo "Start the program"
    ;;
    [Ss]top) 
    echo "Stop the program"
    ;;
    [Ss]tatus) 
    echo "Check the program's status"
    ;;
    help|*)
    echo "Use stop or start"        # Executed even $1 doesn't exist
esac

# Test it, passing an argument for the execution
# bash case.sh stop
# bash case.sh Stop
# bash case.sh ddddd
# bash case.sh 