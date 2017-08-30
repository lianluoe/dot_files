#!/bin/bash
STATE=`mocp -Q %state`
if [ "$STATE" == "PLAY" ]
then
	echo -n "  "
	mocp -Q %title
elif [ "$STATE" == "PAUSE" ]
then
	echo -n "  "
	mocp -Q %title
else
	echo -n "  "
	echo -n "Not Playing"
fi
