#!/bin/bash/
#this is the Two dimensional array program
# it receives the number of rows and columns
echo "Two D array program"
echo "Enter number of rows"
read m
echo "Enter number of columns"
read n
#declare the array by this syntax
declare -A a
#it stores the m*n data
for (( i=0; i<n; i++ ))
do
	for (( j=0; j<m; j++ ))
	do
	echo "Enter $i th row $j th column data"
	read a[$i,$j]
	done
done
# display it here
for (( i=0; i<n;i++ ))
do
	for (( j=0; j<m; j++ ))
	do
		echo -n "${a[${i},${j}]} "
	done
	echo
done
