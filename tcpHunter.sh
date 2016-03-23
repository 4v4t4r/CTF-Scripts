#!/bin/bash
#Portante
rm --"$0"
echo "tcphunter is working"
while : #loop forever
do
	for i in `sudo netstat -anp | grep tcp | grep -e '10.1.40.*' -e '10.1.50.*' | awk '{print $7}' | awk -F '/' {'print $1'} | uniq`
		do kill -9 $i 2> /dev/null;done #kill process aggressively pipe errors to null bucket
	sleep 20s #sleep 20 sec
done
