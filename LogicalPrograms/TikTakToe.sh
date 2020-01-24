#!/bin/bash
source Utility.sh
#i have declared empty static arrays
A1=(' ' ' ' ' ')
A2=(' ' ' ' ' ')
A3=(' ' ' ' ' ')
#This is array is used to tik the corresponding position is ticked
InputEntry=(0 0 0 0 0 0 0 0 0)
#Count is zero because it will execute till count becomes 9
Count=0
#Array entry is used to enter the array index
ArrayEntry()
{
i=$1
s=$2
case $i in 1 )
A1[0]=$s
;;
2)
A1[1]=$s
;;
3)
A1[2]=$s
;;
4)
A2[0]=$s
;;
5)
A2[1]=$s
;;
6)
A2[2]=$s
;;
7)
A3[0]=$s
;;
8)
A3[1]=$s
;;
9)
A3[2]=$s
;;
*)
;;
esac
}
#Game Check it is used to weather the game is over or not
#all the rows columns and diagnols entered by same element or not
GameCheck(){
tik=$1
if [ "${A1[0]}" == "${A1[1]}" ] && [ "${A1[1]}" == "${A1[2]}" ] && [ "${A1[0]}" == "$tik" ]
then
return 1
fi
if [ "${A2[0]}" == "${A2[1]}" ] && [ "${A2[1]}" == "${A2[2]}" ] && [ "${A2[0]}" == "$tik" ]
then
return 1
fi
if [ "${A3[0]}" == "${A3[1]}" ] && [ "${A3[1]}" == "${A3[2]}" ] && [ "${A3[0]}" == "$tik" ]
then
return 1
fi
if [ "${A1[0]}" == "${A2[0]}" ] && [ "${A2[0]}" == "${A3[0]}" ] && [ "${A1[0]}" == "$tik" ]
then
return 1
fi
if [ "${A1[1]}" == "${A2[1]}" ] && [ "${A2[1]}" == "${A3[1]}" ] && [ "${A1[1]}" == "$tik" ]
then
return 1
fi
if [ "${A1[2]}" == "${A2[2]}" ] && [ "${A2[2]}" == "${A3[2]}" ] && [ "${A1[2]}" == "$tik" ]
then
return 1
fi
if [ "${A1[0]}" == "${A2[1]}" ] && [ "${A2[1]}" == "${A3[2]}" ] && [ "${A1[0]}" == "$tik" ]
then
return 1
fi
if [ "${A1[2]}" == "${A2[1]}" ] && [ "${A2[1]}" == "${A3[0]}" ] && [ "${A1[2]}" == "$tik" ]
then
return 1
fi
return 0
}

#Computer Play its Computer play control
ComputerPlay(){
#call a random number to entering computer position
RandomNum 10
pos=$?
#index is pos -1 because array of input entry started by 0
index=`expr $pos - 1`
#this will execute till statement becomes true
if [ $pos -gt 9 ] || [ $pos -le 0 ] || [ ${InputEntry[index]} -ne 0 ]
then
ComputerPlay
else
#then tik InputArray by 0 to 1
InputEntry[index]=1
#make array index as O
ArrayEntry $pos O
#increment the count by 1
Count=`expr $Count + 1`
fi
return
}
#User Play control its similar to computer play
UserPlay(){
echo "Enter position"
read pos
index=`expr $pos - 1`
if [ $pos -gt 9 ] || [ $pos -le 0 ] || [ ${InputEntry[index]} -ne 0 ]
then
UserPlay
else
InputEntry[index]=1
ArrayEntry $pos X
Count=`expr $Count + 1`
fi
return
}

#Display the current status of Array
Display(){
clear
echo
echo "			  TikTakToe"
echo "			_____________"
echo "			| "${A1[0]}" | "${A1[1]}" | "${A1[2]}" |"
echo "			----+---+----"
echo "			| "${A2[0]}" | "${A2[1]}" | "${A2[2]}" |"
echo "			----+---+----"
echo "			| "${A3[0]}" | "${A3[1]}" | "${A3[2]}" |"
echo "			_____________"
}

echo "Tik Tac Toe program"
Display
#it will play till count becomes 9
while (( $Count < 9 ))
do
#if count is less then 9 it will play the user play
if [ $Count -lt 9 ]
then
UserPlay
#Checking for game is over or not
GameCheck X
ret=$?
#if return value is 1 the display the array exit the game
if [ $ret -eq 1 ]
then
Display
echo "User wins the game"
exit
fi
#else display the array 
Display
#if count becomes 9 that means no one wins the match
else
echo "No one wins"
Display
exit
fi
#Same as User play
if [ $Count -lt 9 ]
then
ComputerPlay
GameCheck O
ret=$?
if [ $ret -eq 1 ]
then
Display
echo "Computer wins the game"
exit
fi
Display
else
echo "No one wins"
Display
exit
fi
done
Display
