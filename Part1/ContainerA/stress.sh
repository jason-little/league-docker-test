#!/bin/bash
service snmpd start && /opt/cpustress.sh & /opt/diskusage.sh & /opt/networkstress.sh
