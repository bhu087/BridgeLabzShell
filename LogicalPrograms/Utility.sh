#!/bin/bash
RandomNum(){
Range=$1
for i in `seq 5`
do
 junk=1
done
return `expr $RANDOM % $Range`
}
#This is the timer formatter
TimeFormatter(){
TimeSpan=$1
Hour=00
Minutes=00
Seconds=00
#if total time in hours range
if [ $TimeSpan -ge 3600 ]
then
	Hour=`expr $TimeSpan / 3600`
	TimeSpan=`expr $TimeSpan % 3600`
fi
#if time is range of minutes
if [ $TimeSpan -ge 60 ]
then
	Minutes=`expr $TimeSpan / 60`
	TimeSpan=`expr $TimeSpan % 60`

fi
#remaining values are seconds
Seconds=$TimeSpan
echo $Hour:$Minutes:$Seconds
return
}
#Fewest notes Utility
FewNotes(){
Amount=$1
Deno=( 1000 500 100 50 10 5 2 1 )
Notes=( 0 0 0 0 0 0 0 0 )
for (( i=0;i<8;i++ ))
do
if [ $Amount -ge ${Deno[i]} ]
then
Notes[i]=`expr $Amount / ${Deno[i]}`
Amount=`expr $Amount % ${Deno[i]}`
fi
done
for (( i=0;i<8;i++ ))
do
	echo "${Deno[i]}	rupees Notes are ${Notes[i]}"
done
}
