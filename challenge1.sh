#!/bin/bash
# Previous line is to call to bash interpreter

name="Alfredo"
surname='Toledano'
day=`date`          # Required ``

# +  needed to invoke next method
# %  formatting
# %j day of the year   
dayYear=`date +%j`  

# %D Short format
dayShort=`date +%D`  

# %s number of seconds elapsed since 01/01/1970
secondsElapsedToNow=`date +%s`  

# -u Now in UTC format
nowUTC=`date -u`

# %k%M  24 hour format
digitalDate=`date +%k%M`

echo "date: " $day
echo "dayYear: " $dayYear
echo "dayShort: " $dayShort
echo "secondsElapsedToNow: " $secondsElapsedToNow
echo "nowUTC: " $nowUTC
echo "digitalDate: " $digitalDate

if [ "$name" == 'Alfredo' ]       # []  when symbols are used
then
    echo "Hello $name. Today it's $dayShort"
else    
    echo 'My name is not Alfredo'
fi