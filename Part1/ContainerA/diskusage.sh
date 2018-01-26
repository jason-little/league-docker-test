#!/bin/bash
while true
do
	filesize=`shuf -i 500000-4000000 -n 1`
	dd if=/dev/random of=/tmp/largefile bs=1024 count=$filesize
	rm /tmp/largefile
	sleeptime=`shuf -i 1-10 -n 1`
	sleep $sleeptime
done
}
