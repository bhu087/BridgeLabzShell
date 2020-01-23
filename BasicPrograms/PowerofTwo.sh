#!/bin/bash


PowerOf(){
source Utility.sh
range=$1
ret=1
for (( i=0; i<$range; i++ ))
do
(( val=2**i ))
	if [ $val -gt 999 -a $val -lt 10000 ]
	then
	LeapYear $val
	ret=$?
		if [ $ret -eq 1 ]
		then
			echo -n $val
			echo " is leap year"
		else
		echo $val
		fi
	else
	echo $val
	fi
done
}



echo "Power of two"
echo "Enter a range from 0 to 31"
read RANGE

if [ $RANGE -ge 0 -a $RANGE -lt 31 ]
then
	PowerOf $RANGE
else
echo "OverFlow"
fi
