#!/bin/bash
while true
do
    cpu=`shuf -i 1-4 -n 1`
    stress --cpu $cpu --timeout 30
done