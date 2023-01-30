#!/bin/bash
fecha=`date`
echo "Inicio de ejecución del codigo: $fecha" >> \logs\script1.log      # Linux/MacOs    \logs\script1.log     Windows /logs/script1.log


# Run it
# bash question1.sh     

# if the file /logs/script1.log doesn't exist --> it will fail
# if the file exists --> it will add date in the last line, but without inserting a new one
