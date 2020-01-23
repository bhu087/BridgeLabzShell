#!/bin/bash
source Utility.sh
echo "Flip coin program"
echo "How many time you need to toss"
read count
tails=0
heads=0
#it will checks till count times
for (( j=0;j<count;j++ ))
do
RandomNum
ret=$?
if [ $ret -ge 4 ]
then
tails=`expr $tails + 1`
else
heads=`expr $heads + 1`
fi
done
echo "Tails win $tails"
echo "Heads win $heads"
HeadsVsTails=$(echo "$heads" "$tails" | awk '{print $1/$2*100}')
echo "heads vs Tails is $HeadsVsTails %"
