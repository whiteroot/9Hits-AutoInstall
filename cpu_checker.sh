#!/usr/bin/env bash

MAX_CPU=9

n=`w|head -1|awk '{print $10}' |sed 's/,.*//'`
echo $n

if test $n -gt $MAX_CPU
then
	/root/9Hits/kill.sh
fi

