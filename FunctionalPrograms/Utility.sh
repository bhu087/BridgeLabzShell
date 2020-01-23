#!/bin/bash
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
        for (( i=0; i<size; i++ ))
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
