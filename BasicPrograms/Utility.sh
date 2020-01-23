#!/bin/bash
LeapYear(){
Year=$1
# it checks leap year or not
if [ $(( Year % 4 )) -eq 0 ]
then
        if [ $(( Year % 100 )) -eq 0 ]
        then
                if [ $(( Year % 400 )) -eq 0 ]
                then
                        return 1
                fi
        return 0
        fi
return 1
else
return 0
fi
}

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
return
}

#Random number generator
RandomNum(){
for i in `seq 10`
do
#just 1 is assigned to a
        a=1
done
#Random number available here
return `expr $RANDOM % 10`
}

