#!/bin/bash
#replace string method
Replace(){
str=$1
STDSTRING="Hello <<UserName>>, How are you?"
wrd="<<UserName>>"
#this is used to replace a string
REPSTRING=$( echo "$STDSTRING" | sed "s/$wrd/$str/")
echo $REPSTRING
}

#Replace string program
echo "String replace"
echo "Enter your string"
read String
#to find the string length
STRLENGTH=`echo -n $String | wc -m`
if [ $STRLENGTH -gt 3 ]
then
	Replace $String
else
exit
fi
