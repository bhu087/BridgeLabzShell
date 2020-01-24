#!/bin/bash -x
source Utility.sh
echo "This is Gambler program"
echo "Enter N number of plays"
#Number of games
read N
Win=0
Loss=0
PlayCount=0
#it will play untill N times
for i in `seq $N`
do
Stake=100
Goal=150
echo "............................................................"
while (( $Goal > $Stake && $Stake > 0 ))
do
#Calls random number
RandomNum 6
ret=$?
#if random value is less then 3 And stake is added by 10 else less 10 by stake
if [ $ret -lt 3 ]
then
Stake=`expr $Stake + 10`
else
Stake=`expr $Stake - 10`
fi
done
#stake >= win+1 else Loss+1
if [ $Stake -ge $Goal ]
then
Win=`expr $Win + 1`
else
Loss=`expr $Loss + 1`
fi
done
#win and loss percentages
WinPercent=$(echo "$Win" "$Loss" "$N" | awk '{print ($1/$3)*100}')
LossPercent=$(echo "$Win" "$Loss" "$N" | awk '{print ($2/$3)*100}')
echo $Win "$Win wins, wins percentage is $WinPercent %"
echo $Loss "$Loss Losses, Loss percentage is  $LossPercent %"

