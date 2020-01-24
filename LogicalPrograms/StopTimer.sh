#!/bin/bash -x
source Utility.sh
echo "Stop Timer program"
#Enter key to start the timer
echo "Enter to start the timer"
read
#This statement gives the seconds of the date
StartTime=$( date +%s )
#again enter to stop the timer
echo "Enter to Stop the timer"
read
#This gives the current seconds
EndTime=$( date +%s )
#This gives the total span time in seconds
SpanTime=$(( EndTime - StartTime ))
echo "Total time span in seconds $SpanTime"
echo "H:M:S Format"
#Call the timer formatter
TimeFormatter $SpanTime
