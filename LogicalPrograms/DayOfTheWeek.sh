#!/bin/bash -x
echo "Day of the week program"
Month=( Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec )
Day=( Sunday Monday Tuesday Wednesday Thursday friday Saturday )
echo "Enter day"
read d
echo "Enter month"
read m
echo "Enter year"
read y
(( y0=y - ( 14 - m ) / 12 ))
(( x=y0 + y0 / 4 - y0 / 100 + y0 / 400 ))
(( m0=m + 12 * (( 14 - m ) / 12 ) - 2 ))
(( d0=(d + x + 31 * m0 /12 ) % 7 ))
echo "$d/$m/$y"
echo ${Day[d0]}
