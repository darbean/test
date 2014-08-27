#!/bin/ksh

pids=`ps -A | grep tomcat | grep -v 'grep' | awk '{print $1}'`
#pids=$pids","

if [ "$pids" != "" ]
then
	`kill $pids`
	echo "tomcat ( pid : $pids ) stop successfully!"
else
	echo "tomcat is not running!"
fi

