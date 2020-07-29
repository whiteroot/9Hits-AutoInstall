#!/usr/bin/env bash

sleep 5
MAX_CPU=7

# get average CPU load in last minute
n=0`w|head -1|sed 's/.*average:\(.*\)/\1/'|awk '{print $1}'|sed 's/,.*//'|sed 's/\..*//'`
# remove separator
n=`echo ${n::-1}`
# cast to int
n=${n%.*}
echo $n

if test $n -gt $MAX_CPU
then
	/root/9Hits/kill.sh
fi

