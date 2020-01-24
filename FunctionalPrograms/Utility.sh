#!/bin/bash -x
#Sum of zero Utility
SumOfZero(){
a=$1
size=$2
#if size is zero then sum only 3 values and gives out put
if [ $size -eq 3 ]
then
        (( sum=${a[0]}+${a[1]}+${a[2]} ))
        if [ $sum -eq 0 ]
        then
        echo ${a[@]} "are sum of zeros"
        fi
else
#if values are more then 3 then it will execute
        for (( i=0; i<$size; i++ ))
        do
                (( i= $i % $size ))
                (( j= ($i+1) % $size ))
                (( k= ($i+2) % $size ))
                (( sum=${a[i]}+${a[j]}+${a[k]} ))
                if [ $sum -eq 0 ]
                then
                        echo "${a[i]} ${a[j]} ${a[k]} are sum of zeros"
                fi
        done

fi
}
#Distance Utility
DistanceUtility(){
X=$1
Y=$2
SqX=`expr $X \* $X`
SqY=` expr $Y \* $Y`
Value=`expr $SqX + $SqY`
#calculating sqrt im using awk
Dist=$(echo "$Value" | awk '{print sqrt($1)}')
clear
echo "Distance is $Dist"
}

#Quadratic equation program

QuadraticUtility(){
a=$1
b=$2
c=$3
#delta value to find the roots
(( delta = ($b \* $b ) - ( 4 \* $a \* $c) ))
#delta is 0 then roots are equal anad real
if [ $delta -eq 0 ]
then
	echo -n "Roots are equal"
	x=$(echo "$a" "$b" 2 | awk '{print -$2/($3*$1)}')
	echo " X=$x and Y=$x"
fi
#delta is greater then 0 then roots are rael and different
if [ $delta -gt 0 ]
then
	echo -n "Roots are real"
	x=$(echo "$a" "$b" "$delta" | awk '{print (-$2+sqrt($3))/(2*$1)}')
	y=$(echo "$a" "$b" "$delta" | awk '{print (-$2-sqrt($3))/(2*$1)}')
	echo " X=$x and Y=$y"
fi
#delta is less then 0 the roots are imaginary
if [ $delta -lt 0 ]
then
	echo -n "Roots are imaginary"
	rePart=$(echo "$a" "$b" | awk '{print -$2/(2*$1)}')
	imPart=$(echo "$a" "$delta" | awk '{print sqrt(-$2/(2*$1))}')
	echo " $rePart + $imPart i and $rePart - $imPart i"
fi
}
















