#!/usr/bin/env bash

sleep 5
MAX_CPU=7

# get average CPU load in last minute
n=`w|head -1|sed 's/.*average: \(.*\), .*, .*/\1/'|sed -e 's/,/\./'`
# cast to int
n=${n%.*}
echo $n

if test $n -gt $MAX_CPU
then
	/root/9Hits/kill.sh
fi

