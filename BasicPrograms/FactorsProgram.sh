#!/bin/bash
#Factors Program utility
Factors()
{
Number=$1
Count=0
echo "Factors for given number is"
# if any factors then it will display othewise it will display
# no factors available
	for (( i=2; i<=$Number/2 ;i++ ))
	do
		if [ $(( $Number % $i )) -eq 0 ]
		then
			(( Count=$Count+1 ))
			echo $i
		fi
	done
if [ $Count -eq 0 ]
then
	echo "No factors available"
fi
}




# Here it receives the value for checking factors

echo "Enter your number"
read Number
Factors $Number
