#!/bin/sh
#usage: msg target message
#called with no args it will list the currently listening users
if [ $# -ne 2 ]
then
echo "CURRENTLY LISTENING"
ps -A -o " %c %U" |grep msgd
else
msgpost `whoami`@$1: $2&
fi


