#!/bin/bash

#Create Log command line: ./parse_tide.sh |  awk '{ print systime(),$0; fflush(); }' >> test_tide.log

# Port setting
stty -F /dev/ttyUSB0 cs7 cstopb -ixon raw speed  9600

# Loop
while [ 1 ]; 
do
    READ=`dd if=/dev/ttyUSB0 count=5`
    echo $READ
done
