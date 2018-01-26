#!/bin/bash
nohup iperf -s &
ip=`ifconfig | perl -nle 's/dr:(\S+)/print $1/e' | head -n 1`
echo $ip
while true
do
	bytes=`shuf -i 1073741824-53687091200 -n 1`
	iperf -c $ip -n $bytes
done