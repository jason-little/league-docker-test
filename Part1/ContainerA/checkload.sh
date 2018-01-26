#!/bin/bash
 
load=`echo $(cat /proc/loadavg | awk '{print $1}') \> 3 | bc -l`
if [ "$load" -ne 0 ]; then
        echo "Your Server Load Alert Needs Attention! " | mail -s "System Load Alert $load" shattered_lands@hotmail.com 

        echo "Alert email sent to take-home-test@league.pagerduty.com"
fi
 
echo "System Load $(cat /proc/loadavg)"
