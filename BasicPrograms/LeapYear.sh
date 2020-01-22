#!/bin/bash/
# this is leap year logic
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
# this is the main program
echo "This is your Leap Year Utility"
echo "Enter your year"
read Year
# if your input is not in yyyy format then it will exit the program
# else it will takes the control to leap year logic
if [ $Year -gt 999 -a $Year -lt 10000 ]
then
	LeapYear $Year
else
	echo "Your Year not in range it accepts yyyy format"
exit
fi
# if return value is 1 then it will indicates that leap year
# else not leap year
if [ $? -eq 1 ]
then
        echo "This is leap year"
else
        echo "This is not leap year"
fi
