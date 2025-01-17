#!/bin/bash

# exit codes of GameServer:
#  0 normal shutdown
#  2 reboot attempt

while :; do
	[ -f log/java0.log.0 ] && mv log/java0.log.0 "log/`date +%Y-%m-%d_%H-%M-%S`_java.log"
	[ -f log/stdout.log ] && mv log/stdout.log "log/`date +%Y-%m-%d_%H-%M-%S`_stdout.log"
	#java -Dpython.cachedir=../cachedir -Xms1024m -Xmx1792m -jar l2jserver.jar > log/stdout.log 2>&1
	java -Dpython.cachedir=../cachedir -Xms1024m -Xmx1792m -jar l2jserver.jar
	[ $? -ne 2 ] && break
#	/etc/init.d/mysql restart
	sleep 10
done
