#!/bin/bash
#This is the harmonic number program
echo "Enter a number"
read Num
Ans=0
for (( i=1; i<=Num; i++ ))
do
#using awk we can achieve a fractional number calculations
	Ans=$(echo 1 $Ans $i | awk '{print $2+($1/$3)}')
done
#Final answer is here
echo $Ans
