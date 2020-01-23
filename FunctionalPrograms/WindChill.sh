#!/bin/bash -x
echo "You are in wind chill program"
echo "Enter Temperature"
read Temperature
echo "Enter Velocity"
read Velocity
if [ $Temperature -lt 51 -a $Velocity -lt 120 -a $Velocity -gt 3 ]
then
w=$(echo "$Temperature" "$Velocity" | awk '{print 35.74+(0.6215*$1)+(0.4275*$1 - 35.75)*$2^0.16}')
echo $w
else
echo "Your not in range"
fi
