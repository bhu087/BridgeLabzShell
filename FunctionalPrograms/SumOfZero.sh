#!/bin/bash -x
source Utility.sh
echo "Enter an array size"
read size
echo "Enter array elements"
#store the values to array
for (( i=0; i<size; i++ ))
do
	read a[$i]
done
#call the utility function
SumOfZero $a $size
